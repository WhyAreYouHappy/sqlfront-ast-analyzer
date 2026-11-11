import { colors } from "../colors";

import styles from "./menu-icon.module.scss";

type MenuProps = {
  color?: keyof typeof colors,
  onClick: () => void;
};

export const MenuIcon = ({ color="black", onClick }: MenuProps) => {
  return (
    <div
      className={styles.menu}
      style={{ color: colors[color] }}
      onClick={onClick}
    >
      <div></div>
      <div></div>
      <div></div>
    </div>
  );
};
