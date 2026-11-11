import { ButtonHTMLAttributes } from "react";
import { colors } from "../colors";

import styles from "./button.module.scss";

type ButtonProps = ButtonHTMLAttributes<HTMLButtonElement> & {
  color: keyof typeof colors;
  width: string;
  padding: string;
  textAlign?: "left" | "center" | "right";
  type?: "submit" | "reset" | "button";
  children: React.ReactNode;
};

const buttonHoverColorMap = {
  white: colors.grayMid,
  red: colors.black,
  black: colors.red,
  grayMid: colors.black,
};

export const Button = ({
  color,
  width,
  padding,
  textAlign = "center",
  type = "button",
  children,
  ...props
}: ButtonProps) => {
  return (
    <button
      type={type}
      className={styles.button}
      style={{
        "--color": colors[color],
        "--hover-color": buttonHoverColorMap[color],
        "--width": width,
        "--padding": padding,
        textAlign,
      } as React.CSSProperties}
      {...props}
    >
      {children}
    </button>
  );
};
