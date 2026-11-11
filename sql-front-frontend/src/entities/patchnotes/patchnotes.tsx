import React, { useCallback, useState } from "react";
import NextLink from "next/link";
import cn from "classnames";

import { Title } from "@/shared/ui/title/title";
import { MenuIcon } from "@/shared/ui/menu-icon/menu-icon";
import { MenuDrawer } from "@/entities/menu-drawer/menu-drawer";
import { useAppSelector } from "@/shared/hooks/redux";
import { patchnotesData } from "@/shared/data/patchnotes";

import styles from "./patchnotes.module.scss";

const categoryIcons: Record<string, string> = {
  "Задания и контент": "🎯",
  "Движок SQL": "⚙️",
  "Интерфейс": "🎨",
  "База данных": "🗄️",
  "Безопасность": "🛡️",
  "Квесты": "📜",
  "Телеметрия и админка": "📊",
};

const renderFormattedText = (text: string) => {
  const parts = text.split(/(`[^`]+`)/g);
  return parts.map((part, index) => {
    if (part.startsWith("`") && part.endsWith("`")) {
      return <code key={index}>{part.slice(1, -1)}</code>;
    }
    return <React.Fragment key={index}>{part}</React.Fragment>;
  });
};

export const Patchnotes = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const { token } = useAppSelector((state) => state.auth);
  const isAuth = Boolean(token);

  const toggleMenu = useCallback(() => {
    setIsMenuOpen((prev) => !prev);
  }, []);

  return (
    <main className={styles.patchnotes}>
      <MenuIcon color="red" onClick={toggleMenu} />
      <MenuDrawer
        isOpen={isMenuOpen}
        onClose={toggleMenu}
        currentPage="patchnotes"
        isAuth={isAuth}
      />

      <div className={styles.topBar}>
        <NextLink href="/" className={styles.backLink}>
          ← На главную
        </NextLink>
      </div>

      <header className={styles.headerSection}>
        <Title as="h1" size="5.5vw" color="black" margin="0 0 1vw 0">
          Журнал обновлений
        </Title>
        <p className={styles.pageSubtitle}>
          Хроника боевых донесений: история развития платформы «SQL Фронт»,
          обновления базы данных, доработки заданий и улучшения движка выполнения
          запросов.
        </p>

        <nav className={styles.quickNav} aria-label="Быстрый переход по версиям">
          {patchnotesData.map((rel) => (
            <a
              key={rel.version}
              href={`#version-${rel.version.replace(".", "-")}`}
              className={styles.quickNavButton}
            >
              <span>v{rel.version}</span>
              {rel.badge && <small>({rel.badge})</small>}
            </a>
          ))}
        </nav>
      </header>

      <section className={styles.releasesList}>
        {patchnotesData.map((release) => {
          const isCurrent = release.version === "1.3";
          const versionAnchor = `version-${release.version.replace(".", "-")}`;

          return (
            <article
              key={release.version}
              id={versionAnchor}
              className={cn(styles.releaseCard, {
                [styles.releaseCardCurrent]: isCurrent,
              })}
            >
              <div className={styles.cardHeader}>
                <div className={styles.versionTitleGroup}>
                  <span className={styles.versionNumber}>
                    Версия {release.version}
                  </span>
                  {release.badge && (
                    <span
                      className={cn(styles.badge, {
                        [styles.badgeCurrent]: isCurrent,
                        [styles.badgeStable]: release.badge === "Стабильный релиз",
                        [styles.badgeBase]:
                          release.badge !== "Стабильный релиз" && !isCurrent,
                      })}
                    >
                      {release.badge}
                    </span>
                  )}
                </div>
                <time className={styles.releaseDate} dateTime={release.date}>
                  {release.date}
                </time>
              </div>

              <h2 className={styles.releaseTheme}>«{release.title}»</h2>

              <div className={styles.summaryBox}>
                <strong>Краткий обзор: </strong>
                {release.summary}
              </div>

              <div className={styles.sectionsList}>
                {release.sections.map((section) => (
                  <div key={section.category} className={styles.sectionBlock}>
                    <div className={styles.categoryTag}>
                      <span>{categoryIcons[section.category] || "📌"}</span>
                      <span>{section.category}</span>
                    </div>
                    <ul className={styles.itemsList}>
                      {section.items.map((item, idx) => (
                        <li key={idx} className={styles.itemRow}>
                          {renderFormattedText(item)}
                        </li>
                      ))}
                    </ul>
                  </div>
                ))}
              </div>
            </article>
          );
        })}
      </section>

      <footer className={styles.footerCallout}>
        <div className={styles.footerTitle}>Заметили неточность в условии?</div>
        <div className={styles.footerText}>
          Если у вас возник вопрос по формулировке задания или обнаружено
          расхождение с историческими данными, отправьте сообщение через форму обратной связи.
        </div>
        <div className={styles.footerActions}>
          <a
            href="https://forms.yandex.ru/u/6ad49fb0852af3e621c7a24c/"
            target="_blank"
            rel="noopener noreferrer"
            className={styles.bugButton}
          >
            🐛 Сообщить о баге
          </a>
          <NextLink href={isAuth ? "/missions" : "/"} className={styles.mainButton}>
            {isAuth ? "Перейти к заданиям" : "Вернуться на главную"}
          </NextLink>
        </div>
      </footer>
    </main>
  );
};
