export const TASK_DIFFICULTY_QUERY_PARAM = "task-difficulty";
export const TASK_STATUS_QUERY_PARAM = "task-status";

export const taskDifficultyOptions = [
  {
    label: "все",
    value: "all",
  },
  {
    label: "ДМЛ.00 Новобранец",
    value: 0,
  },
  {
    label: "ДМЛ.01 Специалист",
    value: 1,
  },
  {
    label: "ДМЛ.02 Мастер",
    value: 2,
  },
  {
    label: "ДДЛ.03 Развертывание",
    value: 3,
  },
  {
    label: "ДДЛ.04 Доступы",
    value: 4,
  },
  {
    label: "ПЛП.05 Процедуры и триггеры",
    value: 5,
  },
];

export const taskStatusOptions = [
  {
    label: "все",
    value: "all",
  },
  {
    label: "решенный",
    value: "solved",
  },
  {
    label: "нерешенный",
    value: "unsolved",
  },
];
