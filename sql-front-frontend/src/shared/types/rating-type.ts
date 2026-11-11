export type UserRatingType = {
  login: string;
  fullname: string;
  group: string;
  total_score: number;
  place: number;
  achievement_icons: string[];
};

export type RatingTypeDto = {
  top_users: UserRatingType[];
};

export type RatingType = RatingTypeDto & {
  currentUser: UserRatingType | null;
};
