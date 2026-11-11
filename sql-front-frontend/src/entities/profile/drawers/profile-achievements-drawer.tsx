import { Achievement } from "@/shared/ui/achievement/achievement";
import { Title } from "@/shared/ui/title/title";
import { Text } from "@/shared/ui/text/text";
import { Drawer, type DrawerProps } from "@/shared/ui/drawer/drawer";

import styles from "./profile-achievements-drawer.module.scss";
import { useProfileAchievementsData } from "../use-profile-achievements-data";

export const ProfileAchievementsDrawer = ({
  isOpen,
  onClose,
}: DrawerProps) => {
  const { data } = useProfileAchievementsData(isOpen);

  return (
    <Drawer
      isOpen={isOpen}
      onClose={onClose}
      width="50vw"
      padding="5vw 0 0 4vw"
    >
      <Title
        as="p"
        size="5vw"
        color="black"
      >
        мои достижения
      </Title>
      <div className={styles.achievements}>
        {!data ? (
          <Text>что-то пошло не так ;/</Text>
        ) : data.length === 0 ? (
          <Text>решай задания, чтобы получить ачивки ;/</Text>
        ) : (data.map(({ category, achievements }) => (
              <div key={category} className={styles.categoryBlock}>
                <div className={styles.categoryBlockTitle}>
                  <Title
                    as="p"
                    size="2vw"
                    color="black"
                  >
                    {category}
                  </Title>
                </div>
                {achievements.length === 0 ? (
                  <Text>решай задания, чтобы получить ачивки ;/</Text>
                ) : (
                  <div className={styles.achievementsBlock}>
                    {achievements.map((item) => (
                      <Achievement {...item} key={item.id}/>
                    ))}
                  </div>
                )}
              </div>
            ))
          )
        }
      </div>
    </Drawer>
  );
};
