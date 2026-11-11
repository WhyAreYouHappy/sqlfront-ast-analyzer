import { useEffect } from "react";

import { useAppDispatch, useAppSelector } from "@/shared/hooks/redux";
import { getRating } from "@/store/reducers/actions/rating-action";

export const useRatingData = () => {
  const dispatch = useAppDispatch();
  const rating = useAppSelector((state) => state.rating);

  useEffect(() => {
    dispatch(getRating());
  }, [dispatch]);

  return rating;
};
