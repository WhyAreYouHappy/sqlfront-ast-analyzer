import { Handle, Position } from "@xyflow/react";
import { Text } from "@/shared/ui/text/text";
import cn from "classnames";

import styles from "./database-schema.module.scss";
import { useState } from "react";

export type DatabaseSchemaNodeType = {
  data: {
    label: string;
    description: string;
    columns: { title: string; type: string, description?: string }[];
  };
};

export const DatabaseSchema = ({ data }: DatabaseSchemaNodeType) => {
  const [showDescription, setShowDescription] = useState(false);

  const hasDescription = data.columns.some((column) => Boolean(column.description));

  return (
    <div
      className={cn(styles.card, hasDescription && styles.clickable)}
      onClick={() => setShowDescription((v) => !v)}
    >
      <div className={styles.innerContent}>
        <Text size="1.2vw">{data.label}</Text>
        <Text color="grayMid" size="1vw">{data.description}</Text>

        <div className={styles.rowsBlock}>
          {data.columns.map((entry) => (
            <div key={entry.title} className={styles.row}>
              <Handle
                type="target"
                position={Position.Left}
                id={`target:${entry.title}`}
                className={cn(styles.handle, styles.handleTarget)}
              />

              <Text>{entry.title}&nbsp;&nbsp;</Text>
              
              {showDescription && hasDescription
                ? <Text color="grayMid">{entry.description}</Text>
                : <Text color="grayMid">{entry.type}</Text>
              }

              <Handle
                type="source"
                position={Position.Right}
                id={`source:${entry.title}`}
                className={cn(styles.handle, styles.handleSource)}
              />
            </div>
          ))}
        </div>
      </div>
    </div>
  );
};
