import { Button } from "@/shared/ui/button/button";
import { Drawer, DrawerProps } from "@/shared/ui/drawer/drawer";
import { Table } from "@/shared/ui/table/table";
import { Text } from "@/shared/ui/text/text";
import { Title } from "@/shared/ui/title/title";
import { ResultQueryDataType } from "@/shared/types/task-type";

import styles from "./task-clues-drawer.module.scss";

type TaskCluesDrawerProps = DrawerProps & {
  type: "quest" | "task";
  isUserHasClue: boolean;
  isUserHasExpectedResult?: boolean;
  getClue: () => void;
  getExpectedResult?: () => void;
  clue?: string;
  expectedResult?: ResultQueryDataType;
};

export const TaskCluesDrawer = ({
  isOpen,
  onClose,
  type,
  isUserHasClue,
  isUserHasExpectedResult,
  getClue,
  getExpectedResult,
  clue,
  expectedResult,
}: TaskCluesDrawerProps) => {
  return (
    <Drawer
      isOpen={isOpen}
      onClose={onClose}
      width="60vw"
      padding="4vw 2vw 0 4vw"
    >
      <Title
        as="p"
        size="5vw"
        color="black"
      >
        Подсказка
      </Title>
      <div className={styles.block}>
        {isUserHasClue 
          ? <Text>{clue}</Text>
          : <Button
              color="black"
              width="8vw"
              padding="0.5vw"
              onClick={getClue}
            >
              Показать
            </Button>
        }
      </div>
      
      {type === "task"
        ? <>
            <Title
              as="p"
              size="5vw"
              color="black"
            >
              Ожидаемый результат
            </Title>
            <div className={styles.block}>
              {isUserHasExpectedResult && expectedResult
                ? <>
                    <Table data={expectedResult} height="20vh"/>
                    <Text margin="0.5vw 0 0">Всего строк: {expectedResult.row_count}</Text>
                  </>
                : <Button
                    color="black"
                    width="8vw"
                    padding="0.5vw"
                    onClick={getExpectedResult}
                  >
                    Показать
                  </Button>
              }
            </div>
          </>
        : null
      }
    </Drawer>
  );
};
