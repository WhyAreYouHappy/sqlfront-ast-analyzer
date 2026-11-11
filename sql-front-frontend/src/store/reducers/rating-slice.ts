import { PayloadAction, createSlice } from "@reduxjs/toolkit";

import { RatingType } from "@/shared/types/rating-type";
import { DefaultStateType } from "@/shared/types/state-manager-types";

import { getRating } from "./actions/rating-action";
import { logoutUser } from "./actions/auth-action";

type RatingState = DefaultStateType & RatingType;

const initialState: RatingState = {
  currentUser: null,
  top_users: [],
  isLoading: false,
  error: null,
};

export const ratingSlice = createSlice({
  name: "auth",
  initialState,
  reducers: {},
  extraReducers: (builder) => {
    builder
      // getRating
      .addCase(getRating.pending.type, (state) => {
        state.isLoading = true;
      })
      .addCase(getRating.fulfilled.type, (state, action: PayloadAction<RatingType>) => {
        state.isLoading = false;
        state.error = null;

        state.currentUser = action.payload.currentUser;
        state.top_users = action.payload.top_users;
      })
      .addCase(getRating.rejected.type, (state, action: PayloadAction<string>) => {
        state.isLoading = false;
        state.error = action.payload;
      })

      // logoutUser
      .addCase(logoutUser.fulfilled.type, (state) => {
        state.isLoading = false;
        state.error = null;
        state.currentUser = null;
      })
      .addCase(logoutUser.rejected.type, (state) => {
        state.isLoading = false;
        state.error = null;
        state.currentUser = null;
      });
  }
});

export default ratingSlice.reducer;
