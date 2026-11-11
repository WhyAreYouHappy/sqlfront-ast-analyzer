import { useAppDispatch, useAppSelector } from "@/shared/hooks/redux";
import { useEffect } from "react";

import { getProfileTaskProgress } from "@/store/reducers/actions/profile-action";

export const useTaskProgressData = (enabled: boolean) => {
  const dispatch = useAppDispatch();
  const { tasks } = useAppSelector((state) => state.profile);

  useEffect(() => {
    if (!enabled || tasks.data) {
      return;
    }

    dispatch(getProfileTaskProgress());
  }, [dispatch, tasks.data, enabled]);

  return tasks;
};
