import { Title } from "@/shared/ui/title/title";
import { Text } from "@/shared/ui/text/text";
import { ProgressBar } from "@/shared/ui/progress-bar/progress-bar";
import { Drawer, type DrawerProps } from "@/shared/ui/drawer/drawer";

import styles from "./profile-task-progress-drawer.module.scss";
import { useTaskProgressData } from "../use-task-progress-data";

export const TaskProgressDrawer = ({
  isOpen,
  onClose,
}: DrawerProps) => {
  const { data } = useTaskProgressData(isOpen);

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
        прогресс по задачам
      </Title>
      <div className={styles.progressBlock} >
        {!data ? (
          <Text>что-то пошло не так ;/</Text>
        ) : (
          <>
            <div className={styles.row}>
              <Text>миссия 0</Text>
              <ProgressBar solved={data.easySolved} total={data.easyTasksTotal} />
              <Text>{data.easySolved}/{data.easyTasksTotal}</Text>
            </div>
            <div className={styles.row}>
              <Text>миссия 1</Text>
              <ProgressBar solved={data.mediumSolved} total={data.mediumTasksTotal} />
              <Text>{data.mediumSolved}/{data.mediumTasksTotal}</Text>
            </div>
            <div className={styles.row}>
              <Text>миссия 2</Text>
              <ProgressBar solved={data.hardSolved} total={data.hardTasksTotal} />
              <Text>{data.hardSolved}/{data.hardTasksTotal}</Text>
            </div>
            <div className={styles.row}>
              <Text>миссия 3</Text>
              <ProgressBar solved={data.mission3Solved} total={data.mission3TasksTotal} />
              <Text>{data.mission3Solved}/{data.mission3TasksTotal}</Text>
            </div>
            <div className={styles.row}>
              <Text>миссия 4</Text>
              <ProgressBar solved={data.mission4Solved} total={data.mission4TasksTotal} />
              <Text>{data.mission4Solved}/{data.mission4TasksTotal}</Text>
            </div>
            <div className={styles.row}>
              <Text>миссия 5</Text>
              <ProgressBar solved={data.mission5Solved} total={data.mission5TasksTotal} />
              <Text>{data.mission5Solved}/{data.mission5TasksTotal}</Text>
            </div>
          </>
        )}
      </div>
    </Drawer>
  );
};
