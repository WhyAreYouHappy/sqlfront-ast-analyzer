import styles from "./overlay.module.scss";

type OverlayProps = {
  onClick: () => void,
};

export const Overlay = ({
  onClick,
}: OverlayProps) => {
  return (
    <div className={styles.overlay} onClick={onClick}></div>
  );
};
