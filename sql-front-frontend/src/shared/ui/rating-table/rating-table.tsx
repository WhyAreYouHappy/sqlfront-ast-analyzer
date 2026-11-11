import { RatingType } from "@/shared/types/rating-type";

import styles from "./rating-table.module.scss";

const getUserName = ({ fullname, group, login }: Record<string, string>) => {
  return fullname && group
    ? `${fullname} ${group}`
    : fullname 
    ? fullname
    : login;
};

export const RatingTable = ({ data: { currentUser, top_users } }: { data: RatingType }) => {
  const topUsers = top_users
    .filter(({ login }) => login !== currentUser?.login)
    .sort((a, b) => a.place - b.place);

  return (
    <table className={styles.ratingTable}>
      <tbody>
        {currentUser && (
          <tr className={styles.highlightedRow}>
            <td>{currentUser.place}</td>
            <td>{getUserName({ fullname: currentUser.fullname, group: currentUser.group, login: currentUser.login })}</td>
            <td>{currentUser.total_score}</td>
          </tr>
        )}
        {topUsers.map(({ fullname, group, achievement_icons, login, total_score, place }) => (
          <tr key={login}>
            <td>{place}</td>
            <td>{getUserName({ fullname, group, login })}</td>
            <td>{achievement_icons ? achievement_icons.map((icon) => (<span key={icon}>{icon}</span>)) : null }</td>
            <td>{total_score}</td>
          </tr>
        ))}
      </tbody>
    </table>
  );
};
