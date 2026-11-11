import { useEffect, useMemo } from "react";

import { useAppDispatch, useAppSelector } from "@/shared/hooks/redux";
import { getAchievements } from "@/store/reducers/actions/achievements-action";
import { normalizeAchievementsData } from "@/shared/utils/normalize-achievements-data";

export const useAchievementsData = () => {
  const dispatch = useAppDispatch();
  const { achievements } = useAppSelector((state) => state.achievements);

  useEffect(() => {
    dispatch(getAchievements());
  }, [dispatch]);

  const normalizedData = useMemo(() => {
    if (!achievements) {
      return [];
    }

    return normalizeAchievementsData(achievements);
  }, [achievements]);

  return normalizedData;
};
