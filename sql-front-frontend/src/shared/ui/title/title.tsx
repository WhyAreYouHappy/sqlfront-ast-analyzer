import { colors } from "../colors"; 
import styles from "./title.module.scss";

type TitleProps = {
  size?: string,
  color?: keyof typeof colors,
  as?: "h1" | "h2" | "h3" | "p",
  letterSpacing?: string,
  margin?: string,
  padding?: string,
  width?: string,
  position?: React.CSSProperties["position"],
  left?: string,
  top?: string,
  children: React.ReactNode,
}

export const Title = ({
  size="1vw",
  color="red",
  as="h1",
  letterSpacing="0",
  margin="0",
  padding="0",
  width="auto",
  position="static",
  left="auto",
  top="auto",
  children,
}: TitleProps) => {
  const Tag = as;
  return (
    <Tag
      className={styles.title}
      style={{
        color: colors[color],
        letterSpacing,
        margin,
        padding,
        width,
        position,
        left,
        top,
        fontSize: size,
      }}
    >
      {children}
    </Tag>
  );
};
