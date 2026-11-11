import { AchievementType, AchievementTypeDto, AchievementsType, CategoryType } from "../types/achievements-types";

export const normalizeAchievementsData = (data: AchievementsType): {
  category: CategoryType,
  achievements: AchievementType[]
}[] => {
  return (Object.entries(data) as [CategoryType, AchievementTypeDto[]][]).map(([category, achievements]) => 
    ({
      category,
      achievements: achievements.map((achievement) => ({
        id: achievement.achievement_id,
        name: achievement.name,
        historicalInfo: achievement.historical_info,
        description: achievement.description,
        isAchieved: achievement.is_earned,
      })),
    })
  );
};
