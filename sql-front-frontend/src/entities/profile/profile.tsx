import { Button } from "@/shared/ui/button/button";
import { Title } from "@/shared/ui/title/title";
import { MenuDrawer } from "@/entities/menu-drawer/menu-drawer";
import { MenuIcon } from "@/shared/ui/menu-icon/menu-icon";

import { ProfileAchievementsDrawer } from "./drawers/profile-achievements-drawer";
import { ProfileInfoDrawer } from "./drawers/profile-info-drawer";
import { TaskProgressDrawer } from "./drawers/profile-task-progress-drawer";
import { useProfileData } from "./use-profile-data";
import styles from "./profile.module.scss";
import { useCallback, useMemo, useState } from "react";

const titleFontSizeConfig: Record<number, string>= {
  7: "15vw",
  18: "12vw",
  24: "9vw",
  28: "8vw",
};

export const Profile = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const [isProfileInfoOpen, setIsProfileInfoOpen] = useState(false);
  const [isTaskProgressOpen, setIsTaskProgressOpen] = useState(false);
  const [isAchievementsOpen, setIsAchievementsOpen] = useState(false);

  const { data: profileData } = useProfileData();

  const titleFontSize = useMemo(() => {
    if (!profileData) { //TODO: ?????
      return titleFontSizeConfig[7];
    }

    const length = profileData.login.length;
    const lengths = Object.keys(titleFontSizeConfig).map(Number);

    for (const len of lengths) {
      if (length <= len) {
        return titleFontSizeConfig[len];
      }
    }

    return titleFontSizeConfig[lengths[lengths.length - 1]];
  }, [profileData]);

  const toggleMenu = useCallback(() => {
    setIsMenuOpen((prev) => !prev);
  }, [setIsMenuOpen]);

  const toggleProfileInfo = useCallback(() => {
    setIsProfileInfoOpen((prev) => !prev);
  }, [setIsProfileInfoOpen]);

  const toggleTaskProgress = useCallback(() => {
    setIsTaskProgressOpen((prev) => !prev);
  }, [setIsTaskProgressOpen]);

  const toggleAchievements = useCallback(() => {
    setIsAchievementsOpen((prev) => !prev);
  }, [setIsAchievementsOpen]);

  const buttonsConfig = useMemo(() => [
    {
      text: "Данные профиля",
      onClick: toggleProfileInfo,
    },
    {
      text: "Прогресс по задачам",
      onClick: toggleTaskProgress,
    },
    {
      text: "Достижения",
      onClick: toggleAchievements,
    },
  ], [toggleProfileInfo, toggleTaskProgress, toggleAchievements]);

  return (
    <section
      className={styles.profile}
    >
      <MenuIcon color="white" onClick={toggleMenu}/>
      <MenuDrawer
        isOpen={isMenuOpen}
        onClose={toggleMenu}
        currentPage="profile"
      />
      <ProfileInfoDrawer
        isOpen={isProfileInfoOpen}
        onClose={toggleProfileInfo}
        data={{
          login: profileData?.login,
          fullname: profileData?.fullname,
          group: profileData?.group,
          email: profileData?.email,
        }}
      />
      <TaskProgressDrawer
        isOpen={isTaskProgressOpen}
        onClose={toggleTaskProgress}
      />
      <ProfileAchievementsDrawer
        isOpen={isAchievementsOpen}
        onClose={toggleAchievements}
      />
      <Title
        color="white"
        as="p"
        size={titleFontSize}
        margin="0 0 0 0.7vw"
      >
        {profileData?.login}
      </Title>
      <Title
        color="white"
        as="p"
        size="3vw"
        margin="1vw 0 10vw 0"
        letterSpacing="0.1vw"
      >
        <span>Баллы: </span>
        <span style={{fontSize: "2.6vw"}}>{profileData?.totalScore}</span>
      </Title>
      <div
        className={styles.buttonsBlock}
      >
        {buttonsConfig.map((button) => (
          <Button
            color="white"
            width="15vw"
            padding="0.7vw"
            textAlign="left"
            onClick={button.onClick}
            key={button.text}
          >
            {button.text}
          </Button>
        ))}
      </div>
    </section>
  );
};
