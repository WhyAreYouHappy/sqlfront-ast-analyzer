import axios from "axios";

import { store } from "@/store/store";
import { logoutUser } from "@/store/reducers/actions/auth-action";

import config from "./config";

const api = axios.create({
  baseURL: `${config.apiUrl}/api/`,
  withCredentials: true,
});

api.interceptors.request.use(
  (config) => {
    const { token } = store.getState().auth;

    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }

    return config;
  },
  (error) => {
    return Promise.reject(error);
  }
);

api.interceptors.response.use(
  (config) => config,
  (error) => {
    if (error.response.status === 401) {
      const state = store.getState();
      if (state.auth.token) {
        store.dispatch(logoutUser());
      }
    }

    return Promise.reject(error);
  }
);

export default api;
