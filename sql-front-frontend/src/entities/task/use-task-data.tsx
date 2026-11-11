import { useRouter } from "next/router";
import { useEffect } from "react";

import { tasksSelectors } from "@/store/reducers/tasks-slice";
import { useAppDispatch, useAppSelector } from "@/shared/hooks/redux";
import { getProfileInfo } from "@/store/reducers/actions/profile-action";
import { getTaskData } from "@/store/reducers/actions/task-actions";

export const useTaskData = () => {
  const dispatch = useAppDispatch();
  const router = useRouter();
  const { missionId, taskId } = router.query;
  const task = useAppSelector((state) => tasksSelectors.selectById(state, `${missionId}.${taskId}`));
  const { error } = useAppSelector((state) => state.task);
  const { user } = useAppSelector(state => state.profile);

  useEffect(() => {
    if (!missionId || !taskId) {
      return;
    }

    dispatch(getProfileInfo());
    dispatch(getTaskData({
      missionId: String(missionId),
      taskId: String(taskId),
    }));
  }, [dispatch, missionId, taskId]);

  return {
    task,
    totalScore: user.data?.totalScore, 
    missionId: String(missionId),
    taskId: String(taskId),
    error,
  };
};
