import NextLink, { LinkProps as NextLinkProps } from "next/link";
import cn from "classnames";

import { colors } from "../colors";

import styles from "./link.module.scss";

type LinkProps = NextLinkProps & {
  size?: string,
  underline?: boolean,
  isVisited?: boolean,
  variant?: "link" | "button",
  fontVariant?: "text" | "capital",
  position?: React.CSSProperties["position"],
  left?: string,
  top?: string,
  color?: "red" | "black",
  margin?: string;
  children: React.ReactNode,
}

export const Link = ({
  size="1vw",
  variant="link",
  fontVariant="text",
  underline=false,
  isVisited=false,
  children,
  position="static",
  left="auto",
  top="auto",
  color="black",
  margin="0",
  ...nextLinkProps
}: LinkProps) => {
  const style: React.CSSProperties = {
    fontSize: size,
  };

  if (underline) {
    style.textDecoration = "underline";
  }

  if (isVisited) {
    style.color = colors.grayMid;
  }

  return (
    <NextLink {...nextLinkProps} className={cn(styles.link, {
      [styles.buttonVariant]: variant === "button",
    })}
      style={{
        ...style,
        "--fontVariant": fontVariant === "capital" ? "Buran USSR" : "Moscow Sans",
        "--link-color": colors[color],
        "--link-hover-color": color === "black" ? colors.red : colors.black,
        position,
        left,
        top,
        margin,
      } as React.CSSProperties}
    >
      {children}
    </NextLink>
  );
};
