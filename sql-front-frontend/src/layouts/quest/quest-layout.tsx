import { Quest } from "@/entities/quest/quest";
import { ProtectedLayout } from "@/shared/ui/layout/protected-layout";

export const QuestLayout = () => {
  return (
    <ProtectedLayout>
      <Quest />
    </ProtectedLayout>
  );
};
