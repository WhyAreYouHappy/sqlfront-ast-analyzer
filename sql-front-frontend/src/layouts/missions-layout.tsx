import { Missions } from "@/entities/missions/missions";
import { ProtectedLayout } from "@/shared/ui/layout/protected-layout";

export const MissionsLayout = () => {
  return (
    <ProtectedLayout>
      <Missions />
    </ProtectedLayout>
  );
};
