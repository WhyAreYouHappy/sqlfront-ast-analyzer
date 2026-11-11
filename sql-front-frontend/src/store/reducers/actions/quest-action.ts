import { isAxiosError } from "axios";

import { createAsyncThunk } from "@reduxjs/toolkit";

import api from "@/shared/config/axios";
import strings from "@/shared/consts/strings";
import { QuestListDataType, QuestProgressType, RunQuestQueryType, SubmitQueryResultType } from "@/shared/types/quest-types";
import { QuestIds } from "@/shared/consts/quest-id";
import { ResultQueryDataType } from "@/shared/types/task-type";

export const getQuestList = createAsyncThunk(
  "quests/get--list",
  async (_, { rejectWithValue }) => {
    try {
      const response = await api.get<{ quests: QuestListDataType }>(strings.api.questList);

      return response.data.quests;
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);

export const getQuestProgress = createAsyncThunk(
  "quests/get--info",
  async (questId: QuestIds, { rejectWithValue }) => {
    try {
      const response = await api.get<QuestProgressType>(strings.api.questProgress({ questId }));

      return {
        ...response.data,
        questId,
      };
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);

export const runQuestQuery = createAsyncThunk(
  "quests/run--query",
  async (payload: { questId: QuestIds } & { payload: RunQuestQueryType }, { rejectWithValue }) => {
    try {
      const response = await api.post<ResultQueryDataType>(strings.api.runQuestQuery({ questId: payload.questId }), payload.payload);

      return {
        response: response.data,
        sql_query: payload.payload.sql_query,
      };
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);

export const submitQuestQuery = createAsyncThunk(
  "quests/submit",
  async (payload: { questId: QuestIds } & { payload: RunQuestQueryType }, { rejectWithValue }) => {
    try {
      const response = await api.post<SubmitQueryResultType>(strings.api.submitQuestQuery({ questId: payload.questId }), payload.payload);

      return {
        response: response.data,
        sql_query: payload.payload.sql_query,
      };
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);
