import unittest
from pathlib import Path
import re

from src.migrations.runner import to_asyncpg_dsn, MIGRATIONS_DIR


class TestMigrations(unittest.TestCase):
    def test_to_asyncpg_dsn_conversion(self):
        url = "postgresql+asyncpg://postgres:secret@postgres:5432/users_db"
        dsn = to_asyncpg_dsn(url)
        self.assertEqual(dsn, "postgresql://postgres:secret@postgres:5432/users_db")

    def test_to_asyncpg_dsn_swap_db(self):
        url = "postgresql+asyncpg://postgres:secret@postgres:5432/users_db"
        dsn = to_asyncpg_dsn(url, db_name="game_db")
        self.assertEqual(dsn, "postgresql://postgres:secret@postgres:5432/game_db")

    def test_migration_files_exist_and_non_empty(self):
        users_mig = MIGRATIONS_DIR / "users_db" / "001_sync_tasks_and_tables.sql"
        game_mig = MIGRATIONS_DIR / "game_db" / "001_equipment_audit.sql"

        self.assertTrue(users_mig.exists(), "users_db migration 001 must exist")
        self.assertTrue(game_mig.exists(), "game_db migration 001 must exist")

        users_content = users_mig.read_text(encoding="utf-8")
        self.assertIn("public.tasks", users_content)
        self.assertIn("quest_tasks_solved", users_content)
        self.assertIn("ON CONFLICT (task_global_id)", users_content)
        # Check task 63 fix
        self.assertIn("3-я воздушная армия", users_content)

        game_content = game_mig.read_text(encoding="utf-8")
        self.assertIn("equipment_audit", game_content)

    def test_analysis_grading_migration_configures_real_tasks(self):
        path = MIGRATIONS_DIR / "users_db" / "002_add_analysis_grading_config.sql"
        content = path.read_text(encoding="utf-8")

        self.assertGreaterEqual(content.count("WHERE task_global_id"), 10)
        self.assertIn("analysis_requirements", content)
        self.assertIn("analysis_context", content)
        self.assertIn("quality_policy", content)

    def test_ddl_verification_migration_uses_multiple_inputs(self):
        path = MIGRATIONS_DIR / "users_db" / "003_expand_ddl_verification.sql"
        content = path.read_text(encoding="utf-8")

        self.assertIn("verification_cases", content)
        self.assertIn("get_enlistment_age(1)", content)
        self.assertIn("get_enlistment_age(2)", content)
        self.assertIn("get_enlistment_age(3)", content)

    def test_every_select_task_has_individual_analysis_configuration(self):
        base_content = (
            MIGRATIONS_DIR / "users_db" / "001_sync_tasks_and_tables.sql"
        ).read_text(encoding="utf-8")
        initial_content = (
            MIGRATIONS_DIR / "users_db" / "002_add_analysis_grading_config.sql"
        ).read_text(encoding="utf-8")
        remaining_content = (
            MIGRATIONS_DIR / "users_db" / "004_configure_remaining_select_tasks.sql"
        ).read_text(encoding="utf-8")

        select_task_ids = {
            int(match.group(1))
            for match in re.finditer(
                r"VALUES \((\d+), ([012]), \d+,",
                base_content,
            )
        }
        initially_configured = {
            int(match.group(1))
            for match in re.finditer(
                r"WHERE task_global_id = (\d+);",
                initial_content,
            )
        }
        newly_configured = {
            int(match.group(1))
            for match in re.finditer(
                r"^\s*\((\d+),\s+ARRAY\[",
                remaining_content,
                re.MULTILINE,
            )
        }

        self.assertEqual(len(select_task_ids), 70)
        self.assertEqual(len(initially_configured), 10)
        self.assertEqual(len(newly_configured), 60)
        self.assertEqual(initially_configured | newly_configured, select_task_ids)


if __name__ == "__main__":
    unittest.main()
