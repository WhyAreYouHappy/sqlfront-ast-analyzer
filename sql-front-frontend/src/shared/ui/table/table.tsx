import cn from "classnames";

import styles from "./table.module.scss";

type TableProps = {
  variant?: "dark" | "light",
  data: {
    columns: string[],
    data: (number | string)[][],
  },
  height?: string,
};

export const Table = ({ data: { columns, data }, height, variant="light" }: TableProps) => {
  return (
    <div
      className={styles.tableWrapper}
      style={height ? { "--height": height } as React.CSSProperties : undefined}
    >
      <table className={cn(styles.table, {
        [styles.dark]: variant === "dark",
        [styles.light]: variant === "light",
      })}>
        <thead className={styles.header}>
          <tr>
            {columns.map((columnName, index) => (
              <th
                key={`column-${index}`}
              >
                {columnName}
              </th>
            ))}
          </tr>
        </thead>
        <tbody className={styles.body}>
          {data.map((row, index) => (
            <tr
              key={`row-${index}`}
            >
              {row.map((data, index) => (
                <td
                  key={`data-${index}`}
                >
                  {data}
                </td>
              ))}
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};
