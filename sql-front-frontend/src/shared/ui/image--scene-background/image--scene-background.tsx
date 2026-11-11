import cn from "classnames";

import { QuestIds } from "@/shared/consts/quest-id";

import styles from "./image--scene-background.module.scss";

export const ImageSceneBackground = ({
  questId,
  sceneId,
  isTask,
}: {
  questId: QuestIds,
  sceneId: string,
  isTask: boolean,
}) => {
  return (
    <div className={styles.blackBackground}>
      <div
        className={cn(styles.image, { [styles.blur]: isTask })}
        style={{
          "--imageHref": `url(/images/quest/${questId}/${sceneId}.png)`,
        } as React.CSSProperties}
      />
    </div>
  );
};
