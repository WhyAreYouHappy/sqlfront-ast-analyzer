import { AchievementSubmitType } from "@/shared/types/achievements-types";
import { Text } from "../text/text";
import { AchievementIcon } from "../achievement/achievement-icon/achievement-icon";

import styles from "./achievement-toast.module.scss";

export const AchievementToast = ({ achievement }: { achievement: AchievementSubmitType }) => {
  return (
    <div className={styles.toastContainer}>
      <AchievementIcon id={achievement.achievement_id} />
      <div className={styles.toastTextContainer}>
        <Text>{achievement.name}</Text>
        <Text>{achievement.description}</Text>
      </div>
    </div>
  );
};
