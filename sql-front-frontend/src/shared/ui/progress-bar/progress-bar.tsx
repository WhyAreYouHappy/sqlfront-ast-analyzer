import { useEffect, useState } from "react";

import styles from "./progress-bar.module.scss";

type ProgressBarType ={
  solved: number,
  total: number,
};

export const ProgressBar = ({
  solved,
  total,
}: ProgressBarType) => {
  const [percentage, setPercentage] = useState("");

  useEffect(() => {
    const newPercentage = `${(solved * 100)/total}%`;
    setPercentage(newPercentage);
  }, [solved, total]);

  return (
    <div
      role="progressbar"
      aria-valuenow={solved}
      aria-valuemin={0}
      aria-valuemax={total}
      className={styles.mainLine}
    >
      <div
        className={styles.solvedLine}
        style={{
          "--width": percentage,
        } as React.CSSProperties}
      >
      </div>
    </div>
  );
};
