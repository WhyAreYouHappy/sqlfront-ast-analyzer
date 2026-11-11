export type ProfileInfoDtoType = {
  login: string;
  email: string;
  fullname: string;
  group: string,
  user_id: number,
  total_score: number;
};

export type ProfileTaskProgressDtoType = {
  easy_solved: number;
  medium_solved: number;
  hard_solved: number;
  mission3_solved: number;
  mission4_solved: number;
  mission5_solved: number;
};

export type ProfileTaskTotalDtoType = {
  easy_tasks_total: number;
  medium_tasks_total: number;
  hard_tasks_total: number;
  mission3_tasks_total: number;
  mission4_tasks_total: number;
  mission5_tasks_total: number;
};

export type TaskDataType = {
  easySolved: number;
  easyTasksTotal: number;
  mediumSolved: number;
  mediumTasksTotal: number;
  hardSolved: number;
  hardTasksTotal: number;
  mission3Solved: number;
  mission3TasksTotal: number;
  mission4Solved: number;
  mission4TasksTotal: number;
  mission5Solved: number;
  mission5TasksTotal: number;
};
