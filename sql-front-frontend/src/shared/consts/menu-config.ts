import { QuestIds } from "./quest-id";

export type MenuItemType = {
  page: string,
  text: string,
  href: string | ((_: { questId?: QuestIds }) => string),
  children?: MenuItemType[],
};

export const menuCoonfig: { unauthorized: MenuItemType[], authorized: MenuItemType[] } = {
  unauthorized: [
    {
      page: "login",
      text: "Войти",
      href: "auth?type=login",
    },
    {
      page: "register",
      text: "Зарегистрироваться",
      href: "auth?type=register",
    },
  ],
  authorized: [
    {
      page: "profile",
      text: "Мой профиль",
      href: "/profile",
    },
    {
      page: "quest",
      text: "Квест",
      href: "/quest",
      children: [
        {
          page: "hope",
          text: "Текущий",
          href: ({ questId }) => questId? `/quest/${questId}` : "/quest/hope",
        },
        {
          page: "quest-all",
          text: "Все",
          href: "/quest#list",
        },
      ],
    },
    {
      page: "missions",
      text: "Задачи",
      href: "/missions",
    },
    {
      page: "achievements",
      text: "Достижения",
      href: "/achievements",
    },
    {
      page: "logout",
      text: "Выйти",
      href: "",
    },
  ],
} as const;
