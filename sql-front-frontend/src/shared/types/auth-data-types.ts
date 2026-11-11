export type AuthType = "login" | "register";

export type DataRegisterType = {
  fullname?: string;
  group?: string;
  email: string;
  login: string;
  password: string;
};

export type DataLoginType = {
  login: string;
  password: string;
};

export type LoginResponseType = {
  access_token: string;
};
