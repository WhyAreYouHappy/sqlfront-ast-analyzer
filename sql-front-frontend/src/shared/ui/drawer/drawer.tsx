import { useEffect, useState } from "react";
import { createPortal } from "react-dom";

import { Overlay } from "./overlay/overlay";
import styles from "./drawer.module.scss";

export type DrawerProps = {
  isOpen: boolean,
  onClose: () => void,
  width?: string,
  padding?: string,
  children?: React.ReactNode,
};

export const Drawer = ({
  isOpen,
  onClose,
  width="25vw",
  padding="2.3vw 1.5vw",
  children,
}: DrawerProps) => {
  const [portalTarget, setPortalTarget] = useState<HTMLElement | null>(null);

  useEffect(() => {
    setPortalTarget(document.body);
  }, []);

  useEffect(() => {
    if (!portalTarget) {
      return;
    }

    if (isOpen) {
      document.body.style.overflow = "hidden";
    } else {
      document.body.style.overflow = "";
    }

    return () => {
      document.body.style.overflow = "";
    };
  }, [isOpen, portalTarget]);

  if (!portalTarget) {
    return null;
  }

  return createPortal(
    <>
      {isOpen && <Overlay onClick={onClose}/>}
      <div
        className={`${styles.drawer} ${isOpen ? styles.open : ""}`}
        style={{
          "--width": width,
          "--padding": padding,
        } as React.CSSProperties}
      >
        <button
          className={styles.closeButton}
          type="button"
          onClick={onClose}
        >
          x
        </button>
        {children}
      </div>
    </>,
    portalTarget
  );
};
