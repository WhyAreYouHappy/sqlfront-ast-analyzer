import { Text } from "@/shared/ui/text/text";
import { Title } from "@/shared/ui/title/title";
import { Link } from "@/shared/ui/link/link";
import { QuestIds } from "@/shared/consts/quest-id";
import { ImageQuestsList } from "@/shared/ui/image--quests-list/image--quests-list";

import { useQuestsListData } from "./use-quests-list-data";
import styles from "./quests-list-section.module.scss";

export const QuestsListSection = () => {
  const { data } = useQuestsListData();

  return (
    <section className={styles.questsListSection} id="list">
      {
        data.map(({ id, description, is_completed }) =>
          <div key={id} className={styles.liContainer}>
            <ImageQuestsList questId={id} isDisabled={is_completed}/>
            <div className={styles.textBlock}>
              {is_completed
                ? <Title
                  as="h2"
                  size="7vw"
                  margin="0 0.1vw 0"
                  color="black"
                >
                  {QuestIds[id]}
                </Title>
                : <Link
                  href={`/quest/${id}`}
                  fontVariant="capital"
                  size="7vw"
                  margin="0 0.1vw 0"
                >
                  {QuestIds[id]}
                </Link>
              }
              
              <Text
                size="1vw"
              >
                {description}
              </Text>
            </div>
          </div>
        )
      }
    </section>
  );
};
