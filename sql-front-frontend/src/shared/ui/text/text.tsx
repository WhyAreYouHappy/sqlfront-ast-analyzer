import cn from "classnames";

import { colors } from "../colors";

import styles from "./text.module.scss";

type TextProps = {
  size?: string,
  variant?: "default" | "column",
  align?: "left" | "center" | "right" | "justify" | "start" | "end";
  color?: keyof typeof colors,
  lineHeight?: string,
  textIndent?: string,
  alignSelf?: string,
  margin?: string,
  padding?: string,
  width?: string,
  position?: React.CSSProperties["position"];
  right?: string;
  top?: string;
  gridColumn?: string;
  gridRow?: string;
  children: React.ReactNode,
}

export const Text = ({
  variant="default",
  align="left",
  margin="0",
  padding="0",
  size="1vw",
  lineHeight="125%",
  textIndent="0",
  alignSelf="start",
  color="black",
  width="auto",
  position="static",
  right="auto",
  top="auto",
  gridColumn,
  gridRow,
  children,
}: TextProps) => {
 return (
  <p
    className={cn(styles.text, { [styles.textColumn]: variant === "column" })}
    style={{
      color: colors[color],
      textAlign: align,
      lineHeight,
      textIndent,
      alignSelf,
      fontSize: size,
      margin,
      padding,
      width,
      position,
      right,
      top,
      gridColumn,
      gridRow,
    }}
  >
    {children}
  </p>
 );
};
