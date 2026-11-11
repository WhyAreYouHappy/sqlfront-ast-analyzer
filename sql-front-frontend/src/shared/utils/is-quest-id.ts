import { QuestIds } from "@/shared/consts/quest-id";

export const isQuestId = (value: unknown): value is QuestIds =>
  typeof value === "string" && Object.keys(QuestIds).includes(value as QuestIds);
