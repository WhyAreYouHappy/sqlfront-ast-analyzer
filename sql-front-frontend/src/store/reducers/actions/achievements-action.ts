import { isAxiosError } from "axios";

import { createAsyncThunk } from "@reduxjs/toolkit";

import { AchievementsTypeDto } from "@/shared/types/achievements-types";
import api from "@/shared/config/axios";
import strings from "@/shared/consts/strings";

export const getAchievements = createAsyncThunk(
  "achievements/get",
  async (_, { rejectWithValue }) => {
    try {
      const response = await api.get<AchievementsTypeDto>(strings.api.achievements);

      return response.data;
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);
