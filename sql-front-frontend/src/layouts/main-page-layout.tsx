import { useCallback, useEffect, useState } from "react";

import { DescriptionSection } from "@/entities/main-page/description-section/description-section";
import { IntroSection } from "@/entities/main-page/intro-section";
import { RatingSection } from "@/entities/main-page/rating-section/rating-section";
import { StartGuideSection } from "@/entities/main-page/start-guide-section";
import { Layout } from "@/shared/ui/layout/layout";
import { MenuIcon } from "@/shared/ui/menu-icon/menu-icon";
import { useActiveSection } from "@/shared/hooks/use-active-section";
import { colors } from "@/shared/ui/colors";
import { MenuDrawer } from "@/entities/menu-drawer/menu-drawer";
import { useAppSelector } from "@/shared/hooks/redux";

const sectionIds = {
  description: "description",
  startGuide: "startGuide",
  rating: "rating",
} as const;

const colorBySection: Record<keyof typeof sectionIds, keyof typeof colors> = {
  description: "white",
  startGuide: "black",
  rating: "red",
};

export const MainPageLayout = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [isAuth, setIsAuth] = useState(false);
  const { token } = useAppSelector((state) => state.auth);

  const toggleMenu = useCallback(() => {
    setIsMenuOpen((prev) => !prev);
  }, [setIsMenuOpen]);

  useEffect(() => {
    if (token) {
      setIsAuth(true);
      return;
    }
    setIsAuth(false);
  }, [token, setIsAuth]);
  
  const activeSection = useActiveSection(Object.values(sectionIds));
  
  return (
    <Layout>
      <MenuDrawer
        isOpen={isMenuOpen}
        onClose={toggleMenu}
        currentPage="main"
        isAuth={isAuth}
      />
      <MenuIcon
        color={activeSection ? colorBySection[activeSection] : "black"}
        onClick={toggleMenu}
      />
      <IntroSection isAuth={isAuth} />
      <DescriptionSection id={sectionIds.description} />
      <StartGuideSection id={sectionIds.startGuide} />
      <RatingSection id={sectionIds.rating} />
    </Layout>
  );
};
