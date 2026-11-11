import { useCallback, useEffect, useLayoutEffect, useRef, useState } from "react";
import Image from "next/image";
import cn from "classnames";

import { MenuIcon } from "@/shared/ui/menu-icon/menu-icon";
import { Title } from "@/shared/ui/title/title";
import { Text } from "@/shared/ui/text/text";
import { Link } from "@/shared/ui/link/link";
import { Select } from "@/shared/ui/select/select";

import { MenuDrawer } from "../menu-drawer/menu-drawer";
import { useMissionsData } from "./use-missions-data";
import { TASK_DIFFICULTY_QUERY_PARAM, TASK_STATUS_QUERY_PARAM, taskDifficultyOptions, taskStatusOptions } from "./const";

import styles from "./missions.module.scss";

const images = [
  {
    src: "/images/tasks/image-1.png",
    alt: "tasks background image 1",
  },
  {
    src: "/images/tasks/image-2.png",
    alt: "tasks background image 2",
  },
  {
    src: "/images/tasks/image-3.png",
    alt: "tasks background image 3",
  },
  {
    src: "/images/tasks/image-4.png",
    alt: "tasks background image 4",
  },
];

const selectConfig = [
  {
    title: "сложность",
    name: TASK_DIFFICULTY_QUERY_PARAM,
    options: taskDifficultyOptions,
  },
  {
    title: "статус",
    name: TASK_STATUS_QUERY_PARAM,
    options: taskStatusOptions,
  },
];

export const Missions = () => {
  const tasksRef = useRef<HTMLDivElement | null>(null);
  const imagesRefs = useRef<(HTMLDivElement | null)[]>([]);
  const [maxImagesHeight, setMaxImagesHeight] = useState<number>(0);
  const [visibleImagesCount, setVisibleImagesCount] = useState<number>(0);
  const [isMenuOpen, setIsMenuOpen] = useState<boolean>(false);
  const missionsData = useMissionsData();

  useEffect(() => {
    if (!tasksRef.current) {
      return;
    }

    const observer = new ResizeObserver(([entry]) => {
      setMaxImagesHeight(entry.contentRect.height);
    });

    observer.observe(tasksRef.current);

    return () => observer.disconnect();
  }, [missionsData, setMaxImagesHeight]);

  useLayoutEffect(() => {
    if (!maxImagesHeight) {
      return;
    }

    let sum: number = 0;
    let count: number = 0;

    for (let index = 0; index < imagesRefs.current.length; index += 1) {
      const element = imagesRefs.current[index];
      if (!element) {
        continue;
      }

      const rect = element.getBoundingClientRect();
      if (sum + rect.height <= maxImagesHeight) {
        sum += rect.height;
        count += 1;
      } else {
        break;
      }
    }

    setVisibleImagesCount(count);
  }, [maxImagesHeight]);
  
  const toggleMenu = useCallback(() => {
    setIsMenuOpen((prev) => !prev);
  }, [setIsMenuOpen]);

  return (
    <section className={styles.missions}>
      <MenuIcon color="red" onClick={toggleMenu} />
      <MenuDrawer isOpen={isMenuOpen} onClose={toggleMenu} currentPage="missions"/>
      <Title
        as="h1"
        size="12vw"
        margin="3vw 0 5vw"
        color="black"
      >
        Задачи
      </Title>
      <div className={styles.selectBlock}>
        {selectConfig.map(({ title, name, options}, index) => (
          <div key={`${name}-${index}`}>
            <Text alignSelf="center">{title}</Text>
            <Select
              name={name}
              options={options}
            />
          </div>
        ))}
      </div>
      <div className={styles.content}>
        <div className={styles.tasksSection} ref={tasksRef}>
          {missionsData.length > 0 ? missionsData.map(({ missionId, tasks }) => (
            <div key={`mission-${missionId}`}> 
              <Title
                as="p"
                color="black"
                size="2vw"
              >
                <span style={{ fontSize: "1.73vw" }}>
                  {taskDifficultyOptions.find((opt) => opt.value === missionId)?.label || `Миссия ${missionId}`}
                </span>
              </Title>
              <div className={styles.tasksBlock}>
                {tasks.map((task, index) => (
                  <Link
                    href={`/missions/${missionId}/task/${task.taskId}`}
                    isVisited={task.isSolved}
                    key={`task-${index+1}`}
                  >
                    {index+1}. {task.title}
                  </Link>
                ))}
              </div>
            </div>
          )) : <Title
                as="p"
                color="black"
                size="2vw"
              >
                Нет задач
              </Title>}
        </div>
        <div className={styles.images} style={{ maxHeight: maxImagesHeight }}>
          {images.map(({src, alt}, index) => (
            <div
              key={src}
              ref={(el) => {
                imagesRefs.current[index] = el;
              }}
              className={cn(styles[`image${index + 1}`], { [styles.hidden]: index >= visibleImagesCount })}
            >
              <Image
                src={src}
                alt={alt}
                fill
                sizes="100%"
                className={styles.image}
              />
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};
