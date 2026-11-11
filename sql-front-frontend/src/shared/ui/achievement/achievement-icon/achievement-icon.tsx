import { achievementIcons } from "./const";

import styles from "./achievement-icon.module.scss";

type AchievementIconProps = {
  id: number,
};

export const AchievementIcon = ({
  id,
}: AchievementIconProps) => {
  return (
    <div className={styles.icon}>
      {achievementIcons[id]}
    </div>
  );
};
