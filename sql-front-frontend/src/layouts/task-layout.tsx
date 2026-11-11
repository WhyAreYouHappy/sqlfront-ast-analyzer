import { Task } from "@/entities/task/task";
import { ProtectedLayout } from "@/shared/ui/layout/protected-layout";

export const TaskLayout = () => {
  return (
    <ProtectedLayout>
      <Task />
    </ProtectedLayout>
  );
};
