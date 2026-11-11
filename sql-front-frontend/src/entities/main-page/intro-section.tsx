import { Link } from "@/shared/ui/link/link";
import { Title } from "@/shared/ui/title/title";

import styles from "./intro-section.module.scss";

export const IntroSection = ({ isAuth }: { isAuth: boolean }) => {
  return (
    <section className={styles.introSection}>
      {!isAuth &&
        <div className={styles.menuBlock}>
          <Link href="/auth?type=login" size="1vw">Войти</Link>
          <Link href="/auth?type=register" size="1vw">Зарегистрироваться</Link>
        </div>
      }
      
      <Title
        size="15.8vw"
      >
        <span className={styles.title}>SQL Фронт</span>
        <span className={styles.subTitle}>Битва за данные</span>
      </Title>
      <Title
        size="2.39vw"
        color="black"
        as="p"
        letterSpacing="0.1vw"
        margin="-1.5vw 0 0 11.5vw"
      >
        Освойте SQL,<br></br> отдавая дань памяти подвигам Победы
      </Title>
    </section>
  );
};
