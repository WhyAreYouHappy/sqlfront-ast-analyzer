import { useRouter } from "next/router";
import cn from "classnames";

import { QuestIds } from "@/shared/consts/quest-id";

import styles from "./image--quests-list.module.scss";

export const ImageQuestsList = ({ questId, isDisabled }: { questId: QuestIds, isDisabled?: boolean }) => {
  const router = useRouter();
  
  const handleQuestNavigate = () => {
    if (isDisabled) {
      return;
    }
    
    router.replace(`/quest/${questId}`);
  };

  return (
    <div
      className={cn(styles.image, {
        [styles.disabled]: isDisabled,
      })}
      style={{
        "--imageHref": `url(/images/quest/ids/${questId}.png)`,
      } as React.CSSProperties}
      onClick={handleQuestNavigate}
    />
  );
};
