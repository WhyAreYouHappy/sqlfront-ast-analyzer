import { useCallback, useState } from "react";

import { Link } from "@/shared/ui/link/link";
import { Title } from "@/shared/ui/title/title";
import { MenuIcon } from "@/shared/ui/menu-icon/menu-icon";

import { MenuDrawer } from "../menu-drawer/menu-drawer";
import styles from "./start-quest.module.scss";

export const StartQuest = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  const toggleMenu = useCallback(() => {
    setIsMenuOpen((prev) => !prev);
  }, [setIsMenuOpen]);

  return (
    <section className={styles.startQuest}>
      <MenuIcon onClick={toggleMenu}/>
      <MenuDrawer isOpen={isMenuOpen} onClose={toggleMenu} currentPage="quest"/>
      <Title
        as="h2"
        size="29vw"
        margin="6vw 0 0 5vw"
      >
        SQL
      </Title>
      <Title
        as="p"
        size="17.5vw"
        margin="-2.2vw 0 0 2.4vw"
      >
        фронт
      </Title>
      <Title
        size="20vw"
        position="absolute"
        top="5.8vw"
        left="36.1vw"
      >
        квест
      </Title>
      <Link
        href="/quest/hope" //TODO: calculate dynamic 
        fontVariant="capital"
        size="6.7vw"
        position="absolute"
        top="24.2vw"
        left="41vw"
      >
        начать
      </Link>
    </section>
  );
};
