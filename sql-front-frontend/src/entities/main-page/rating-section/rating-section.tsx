import { Title } from "@/shared/ui/title/title";
import { RatingTable } from "@/shared/ui/rating-table/rating-table";

import { useRatingData } from "./rating-table-model";

import styles from "./rating-section.module.scss";

export const RatingSection = ({ id }: { id: string }) => {
  const data = useRatingData();

  return (
    <section id={id} className={styles.ratingSection}>
      <Title
        margin="5vw 0 3vw 0"
        as="h3"
        size="10vw"
        color="black"
      >
        Топ лучших игроков
      </Title>
      <RatingTable data={data}/>
      <div className={styles.image} />
    </section>
  );
};
