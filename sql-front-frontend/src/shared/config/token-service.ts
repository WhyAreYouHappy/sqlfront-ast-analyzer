export const tokenService = {
  get: () => {
    if (typeof window === "undefined") {
      return null;
    }
    return localStorage.getItem("token");
  },
  set: (token: string) => {
    localStorage.setItem("token", token);
  },
  clear: () => {
    localStorage.removeItem("token");
  }
};
