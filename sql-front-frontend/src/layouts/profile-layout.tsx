import { Profile } from "@/entities/profile/profile";
import { ProtectedLayout } from "@/shared/ui/layout/protected-layout";

export const ProfileLayout = () => {
  return (
    <ProtectedLayout>
      <Profile />
    </ProtectedLayout>
  );
};
