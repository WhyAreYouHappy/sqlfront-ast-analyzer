import { useEffect } from "react";

import { useAppDispatch, useAppSelector } from "@/shared/hooks/redux";
import { getProfileInfo } from "@/store/reducers/actions/profile-action";

export const useProfileData = () => {
  const dispatch = useAppDispatch();
  const { user } = useAppSelector((state) => state.profile);

  useEffect(() => {
    dispatch(getProfileInfo());
  }, [dispatch]);

  return {
    data: user.data,
  };
};
