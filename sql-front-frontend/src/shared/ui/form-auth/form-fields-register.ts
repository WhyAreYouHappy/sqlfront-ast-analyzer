export const formFieldsRegister = [
  {
    name: "fullname",
    label: "ФИО",
    type: "text",
    rules: {
      pattern: {
        value: /^[а-яёА-ЯЁ\s-]{1,90}$/,
        message: "Некорректное фио",
      },
    },
  },
  {
    name: "group",
    label: "Группа",
    type: "text",
    rules: {},
  },
  {
    name: "email",
    label: "Почта",
    type: "text",
    rules: {
      required: "Введите почту",
      pattern: {
        value: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
        message: "Некорректная почта",
      },
    },
  },
  {
    name: "login",
    label: "Логин",
    type: "text",
    rules: {
      required: "Введите логин",
      pattern: {
        value: /^[a-zA-Z][a-zA-Z0-9_-]{1,28}[a-zA-Z0-9]$/,
        message: "Некорректный логин",
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
        message: "Введите пароль от 8 символов",
      },
    },
  },
] as const;
