type MissionsTask = {
  task_id: number;
  task_global_id: number,
  title: string;
  is_solved: boolean;
};

export type MissionsType = Record<string, MissionsTask[]>;
export type MissionsTypeDto = {
  missions: MissionsType;
};
