import { Achievements } from "@/entities/achievements/achievements";
import { ProtectedLayout } from "@/shared/ui/layout/protected-layout";

export const AchievementsLayout = () => {
  return (
    <ProtectedLayout>
      <Achievements />
    </ProtectedLayout>
  );
};
