import { isAxiosError } from "axios";

import { createAsyncThunk } from "@reduxjs/toolkit";

import { AchievementsType } from "@/shared/types/achievements-types";
import { ProfileInfoDtoType, ProfileTaskProgressDtoType, ProfileTaskTotalDtoType } from "@/shared/types/profile-types";
import api from "@/shared/config/axios";
import strings from "@/shared/consts/strings";

export const getProfileInfo = createAsyncThunk(
  "profile/get--info",
  async (_, { rejectWithValue }) => {
    try {
      const response = await api.get<ProfileInfoDtoType>(strings.api.profile);

      return response.data;
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);

export const getProfileTaskProgress = createAsyncThunk(
  "profile/get--task-progress",
  async (_, { rejectWithValue }) => {
    try {
      const responseTaskProgress = await api.get<ProfileTaskProgressDtoType>(strings.api.profileTaskProgress);
      const responseTaskTotal = await api.get<ProfileTaskTotalDtoType>(strings.api.profileTaskTotal);

      return { ...responseTaskProgress.data, ...responseTaskTotal.data };
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);

export const getProfileAchievements = createAsyncThunk(
  "profile/get--achievements",
  async (_, { rejectWithValue }) => {
    try {
      const response = await api.get<AchievementsType>(strings.api.profileAchievements);

      return response.data;
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);
