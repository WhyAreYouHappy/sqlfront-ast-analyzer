import { PayloadAction, createSlice } from "@reduxjs/toolkit";

import { getMissions } from "./actions/missions-action";
import { MissionsType, MissionsTypeDto } from "@/shared/types/missions-types";
import { DefaultStateType } from "@/shared/types/state-manager-types";

type MissionsState = DefaultStateType & {
  missions: MissionsType | null;
};

const initialState: MissionsState = {
  missions: null,
  isLoading: false,
  error: null,
};

export const missionsSlice = createSlice({
  name: "missions",
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder
      // getMissions
      .addCase(getMissions.pending.type, (state) => {
        state.isLoading = true;
      })
      .addCase(getMissions.fulfilled.type, (state, action: PayloadAction<MissionsTypeDto>) => {
        state.isLoading = false;
        state.error = null;
        state.missions = action.payload.missions;
      })
      .addCase(getMissions.rejected.type, (state, action: PayloadAction<string>) => {
        state.isLoading = false;
        state.error = action.payload;
      });
  }
});

export default missionsSlice.reducer;
