import { PayloadAction, createSlice } from "@reduxjs/toolkit";

import { AsyncDataType, InitialAsyncDataState } from "@/shared/types/state-manager-types";
import { AchievementsType } from "@/shared/types/achievements-types";
import { ProfileInfoDtoType, ProfileTaskProgressDtoType, ProfileTaskTotalDtoType, TaskDataType } from "@/shared/types/profile-types";

import { getProfileAchievements, getProfileInfo, getProfileTaskProgress } from "./actions/profile-action";
import { getTaskClueData, getTaskExpectedResultData, submitTaskSolution } from "./actions/task-actions";
import { ClueDtoType, ExpectedResultType, SubmissionResultType, TaskDataPayloadType } from "@/shared/types/task-type";

type UserDataType = {
  login: string;
  email: string;
  fullname: string;
  group: string;
  userId: number;
  totalScore: number;
};

type ProfileState = {
  user: AsyncDataType<UserDataType>;
  tasks: AsyncDataType<TaskDataType>
  achievements: AsyncDataType<AchievementsType>;
};

const initialState: ProfileState = {
  user: InitialAsyncDataState,
  tasks: InitialAsyncDataState,
  achievements: InitialAsyncDataState,
};

export const profileSlice = createSlice({
  name: "profile",
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder
      // getProfileInfo
      .addCase(getProfileInfo.pending.type, (state) => {
        state.user.isLoading = true;
      })
      .addCase(getProfileInfo.fulfilled.type, (state, action: PayloadAction<ProfileInfoDtoType>) => {
        state.user.isLoading = false;
        state.user.error = null;
        state.user.data = {
          login: action.payload.login,
          email: action.payload.email,
          fullname: action.payload.fullname,
          group: action.payload.group,
          userId: action.payload.user_id,
          totalScore: action.payload.total_score,
        };
      })
      .addCase(getProfileInfo.rejected.type, (state, action: PayloadAction<string>) => {
        state.user.isLoading = false;
        state.user.error = action.payload;
      })

      // getProfileTaskProgress
      .addCase(getProfileTaskProgress.pending.type, (state) => {
        state.tasks.isLoading = true;
      })
      .addCase(getProfileTaskProgress.fulfilled.type, (state, action: PayloadAction<ProfileTaskProgressDtoType & ProfileTaskTotalDtoType>) => {
        state.tasks.isLoading = false;
        state.tasks.error = null;
        state.tasks.data = {
          easySolved: action.payload.easy_solved,
          easyTasksTotal: action.payload.easy_tasks_total,
          mediumSolved: action.payload.medium_solved,
          mediumTasksTotal: action.payload.medium_tasks_total,
          hardSolved: action.payload.hard_solved,
          hardTasksTotal: action.payload.hard_tasks_total,
          mission3Solved: action.payload.mission3_solved,
          mission3TasksTotal: action.payload.mission3_tasks_total,
          mission4Solved: action.payload.mission4_solved,
          mission4TasksTotal: action.payload.mission4_tasks_total,
          mission5Solved: action.payload.mission5_solved,
          mission5TasksTotal: action.payload.mission5_tasks_total,
        };
      })
      .addCase(getProfileTaskProgress.rejected.type, (state, action: PayloadAction<string>) => {
        state.tasks.isLoading = false;
        state.tasks.error = action.payload;
        state.tasks.data = null;
      })

      // getProfileAchievements
      .addCase(getProfileAchievements.pending.type, (state) => {
        state.achievements.isLoading = true;
      })
      .addCase(getProfileAchievements.fulfilled.type, (state, action: PayloadAction<AchievementsType>) => {
        state.achievements.isLoading = false;
        state.achievements.error = null;
        state.achievements.data = action.payload;
      })
      .addCase(getProfileAchievements.rejected.type, (state, action: PayloadAction<string>) => {
        state.achievements.isLoading = false;
        state.achievements.error = action.payload;
      })

      //submitTaskSolution
      .addCase(submitTaskSolution.fulfilled.type, (state, action: PayloadAction<TaskDataPayloadType & { submission: SubmissionResultType }>) => {
        if (!state.user.data || action.payload.submission.current_points === undefined) {
          return;
        }

        state.user.data.totalScore = action.payload.submission.current_points;
        
        // Update task progress if a new task was solved
        if (action.payload.submission.points_earned > 0 && state.tasks.data) {
          const missionId = String(action.payload.missionId);
          if (missionId === "0") {
            state.tasks.data.easySolved += 1;
          } else if (missionId === "1") {
            state.tasks.data.mediumSolved += 1;
          } else if (missionId === "2") {
            state.tasks.data.hardSolved += 1;
          } else if (missionId === "3") {
            state.tasks.data.mission3Solved += 1;
          } else if (missionId === "4") {
            state.tasks.data.mission4Solved += 1;
          } else if (missionId === "5") {
            state.tasks.data.mission5Solved += 1;
          }
        }
      })
      
      //getTaskClueData
      .addCase(getTaskClueData.fulfilled.type, (state, action: PayloadAction<TaskDataPayloadType & { clue: ClueDtoType }>) => {
        if (!state.user.data || action.payload.clue.total_score === undefined) {
          return;
        }
        state.user.data.totalScore = action.payload.clue.total_score;
      })

      //getTaskExpectedResultData
      .addCase(getTaskExpectedResultData.fulfilled.type, (state, action: PayloadAction<TaskDataPayloadType & { expectedResult: ExpectedResultType }>) => {
        if (!state.user.data || action.payload.expectedResult.total_score === undefined) {
          return;
        }
        state.user.data.totalScore = action.payload.expectedResult.total_score;
      });
  }
});

export default profileSlice.reducer;
