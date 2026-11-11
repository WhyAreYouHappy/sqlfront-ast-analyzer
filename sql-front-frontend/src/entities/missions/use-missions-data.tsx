import { useSearchParams } from "next/navigation";

import { useAppDispatch, useAppSelector } from "@/shared/hooks/redux";
import { getMissions } from "@/store/reducers/actions/missions-action";
import { MissionsType } from "@/shared/types/missions-types";

import { TASK_DIFFICULTY_QUERY_PARAM, TASK_STATUS_QUERY_PARAM } from "./const";
import { useEffect, useMemo } from "react";

type TaskType = {
  missionId: number,
  taskId: number,
  title: string,
  isSolved: boolean,
};

const normalizeMissionsData = (data: MissionsType): TaskType[] => {
  return Object.entries(data).flatMap(([missionId, tasks]) =>
    tasks.map((task) => ({
      missionId: Number(missionId),
      taskId: task.task_id,
      title: task.title,
      isSolved: task.is_solved,
    }))
  );
};

const matchedDifficulty = (taskDifficulty: string | null, missionId: number) => {
  if (taskDifficulty) {
    if (taskDifficulty === "all") {
      return true;
    }

    return missionId === Number(taskDifficulty);
  }

  return true;
};

const matchedStatus = (taskStatus: string | null, isSolved: boolean) => {
  if (taskStatus) {
    if (taskStatus === "solved") {
      return isSolved === true;
    }

    if (taskStatus === "unsolved") {
      return isSolved === false;
    }
  }

  return true;
};

export const useMissionsData = () => {
  const dispatch = useAppDispatch();
  const searchParams = useSearchParams();
  const { missions } = useAppSelector((state) => state.missions);

  const taskDifficulty = searchParams.get(TASK_DIFFICULTY_QUERY_PARAM);
  const taskStatus = searchParams.get(TASK_STATUS_QUERY_PARAM);

  useEffect(() => {
    dispatch(getMissions());
  }, [dispatch]);

  const normalizedData = useMemo(() => {
    if (!missions) {
      return;
    }

    return normalizeMissionsData(missions).filter(({ missionId, isSolved }) => 
      matchedDifficulty(taskDifficulty, missionId) && matchedStatus(taskStatus, isSolved)
    );
  }, [missions, taskDifficulty, taskStatus]);

  const groupedByMission = useMemo(() => {
    if (!normalizedData) {
      return {};
    }

    return normalizedData.reduce<Record<number, TaskType[]>>(
      (acc, task) => {
        acc[task.missionId] ??= [];
        acc[task.missionId].push(task);
        return acc;
      },
      {}
    );
  }, [normalizedData]);

  return Object.entries(groupedByMission).map(([missionId, tasks]) => ({
    missionId: Number(missionId),
    tasks,
  }));
};
