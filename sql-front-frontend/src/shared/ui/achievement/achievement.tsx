import { AchievementType } from "@/shared/types/achievements-types";

import { Text } from "../text/text";
import { AchievementIcon } from "./achievement-icon/achievement-icon";
import styles from "./achievement.module.scss";

export const Achievement = ({
  id,
  name,
  historicalInfo,
  description,
  isAchieved,
}: AchievementType) => {
  return (
    <div className={styles.achievement}>
      <AchievementIcon id={id} />

      <div className={styles.textBlock}>
        <Text>{name}</Text>
        <Text>{historicalInfo}</Text>
        <div className={styles.description}>
          <Text>{description}</Text>
        </div>
      </div>
      
      {isAchieved && 
        <div className={styles.isAchievedContainer}>
          <Text size="2vw">✓</Text>
        </div>
      }
    </div>
  );
};
