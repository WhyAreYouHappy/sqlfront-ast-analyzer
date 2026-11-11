import { isAxiosError } from "axios";

import { createAsyncThunk } from "@reduxjs/toolkit";

import { ClueDtoType, ExpectedResultType, QueryRunType, ResultQueryDataType, SubmissionResultType, TaskDataDtoType, TaskDataPayloadType } from "@/shared/types/task-type";
import api from "@/shared/config/axios";
import strings from "@/shared/consts/strings";

export const getTaskData = createAsyncThunk(
  "task/get",
  async (payload: TaskDataPayloadType, { rejectWithValue }) => {
    try {
      const response = await api.get<TaskDataDtoType>(strings.api.task(payload));

      return response.data;
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);

export const runTaskQuery = createAsyncThunk(
  "task/run",
  async (payload: TaskDataPayloadType & QueryRunType, { rejectWithValue }) => {
    try {
      const response = await api.post<ResultQueryDataType>(strings.api.runTask(payload), payload.payload);

      return {
        ...payload,
        response: response.data,
      };

    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }

      return rejectWithValue(strings.unexpectedError);
    }
  }
);

export const submitTaskSolution = createAsyncThunk(
  "task/submit",
  async (payload: TaskDataPayloadType & QueryRunType, { rejectWithValue }) => {
    try {
      const response = await api.post<SubmissionResultType>(strings.api.submitTaskSolution(payload), payload.payload);

      return {
        ...payload,
        submission: response.data,
      };

    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }

      return rejectWithValue(strings.unexpectedError);
    }
  }
);

export const getTaskClueData = createAsyncThunk(
  "task/clue",
  async (payload: TaskDataPayloadType, { rejectWithValue }) => {
    try {
      const response = await api.post<ClueDtoType>(strings.api.clue(payload));

      return { clue: response.data, ...payload};
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);

export const getTaskExpectedResultData = createAsyncThunk(
  "task/expectedResult",
  async (payload: TaskDataPayloadType, { rejectWithValue }) => {
    try {
      const response = await api.post<ExpectedResultType>(strings.api.expectedResult(payload));

      return { expectedResult: response.data, ...payload};
      
    } catch (err) {
      if (isAxiosError(err)) {
        return rejectWithValue(err.response?.data);
      }
      
      return rejectWithValue(strings.unexpectedError);
    }
  }
);
