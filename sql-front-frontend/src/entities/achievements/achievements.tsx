import { useCallback, useState } from "react";

import { MenuIcon } from "@/shared/ui/menu-icon/menu-icon";
import { MenuDrawer } from "@/entities/menu-drawer/menu-drawer";
import { Title } from "@/shared/ui/title/title";

import { useAchievementsData } from "./use-achievements-data";

import styles from "./achievements.module.scss";
import { Achievement } from "@/shared/ui/achievement/achievement";

export const Achievements = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  const data = useAchievementsData();

  const toggleMenu = useCallback(() => {
    setIsMenuOpen((prev) => !prev);
  }, [setIsMenuOpen]);
    
  return (
    <section className={styles.achievements}>
      <MenuIcon color="red" onClick={toggleMenu}/>
      <MenuDrawer isOpen={isMenuOpen} onClose={toggleMenu} currentPage="achievements"/>
      <Title
        as="h1"
        size="12vw"
        margin="3vw 0 5vw"
        color="black"
      >
        Достижения
      </Title>
      {data.map(({ category, achievements }) => (
        <div key={category} className={styles.categoryBlock}>
          <div className={styles.categoryBlockTitle}>
            <Title
              as="p"
              size="2vw"
              color="black"
            >
              {category.toLowerCase()}
            </Title>
          </div>
          <div className={styles.achievementsBlock}>
            {achievements.map((item) => (
              <Achievement {...item} key={item.name}/>
            ))}
          </div>
        </div>
      ))}
    </section>
  );
};
