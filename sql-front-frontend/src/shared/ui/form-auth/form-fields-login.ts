export const formFieldsLogin = [
  {
    name: "login",
    label: "Логин",
    type: "text",
    rules: {
      required: "Введите логин",
      pattern: {
        value: /^[a-zA-Z][a-zA-Z0-9_-]{1,28}[a-zA-Z0-9]$/,
        message: "Неверный логин",
      },
    },
  },
  {
    name: "password",
    label: "Пароль",
    type: "password",
    rules: {
      required: "Введите пароль",
      pattern: {
        value: /^.{8,}$/,
        message: "Неверный пароль",
      },
    },
  },
] as const;
