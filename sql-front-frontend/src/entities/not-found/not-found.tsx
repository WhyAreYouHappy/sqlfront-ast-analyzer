import { Link } from "@/shared/ui/link/link";
import { Text } from "@/shared/ui/text/text";
import { Title } from "@/shared/ui/title/title";

import styles from "./not-found.module.scss";

export const NotFound = () => {
  return (
    <section className={styles.container}>
      <div>
        <Title
          size="40vw"
          width="fit-content"
        >
          404
        </Title>
        <Text
          margin="-6vw 0 0"
          padding="0 3.7vw 0 0"
          align="right"
        >
          Что-то пошло не так
        </Text>
      </div>
      
      <Link
        href="/"
      > 
        На главную
      </Link>
    </section>
  );
};
