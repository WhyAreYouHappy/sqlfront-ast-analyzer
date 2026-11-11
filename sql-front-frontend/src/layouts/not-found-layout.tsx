import { NotFound } from "@/entities/not-found/not-found";
import { Layout } from "@/shared/ui/layout/layout";

export const NotFoundLayout = () => {
  return (
    <Layout>
      <NotFound />
    </Layout>
  );
};
