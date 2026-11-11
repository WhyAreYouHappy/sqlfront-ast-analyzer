import type { ReactNode } from "react";

import layoutStyles from "./layout.module.scss";

export type LayoutProps = {
  children?: ReactNode;
};

export const Layout = ({ children }: LayoutProps) => {
  return (
    <div className={layoutStyles.layout}>
      {children}
    </div>
  );
};
