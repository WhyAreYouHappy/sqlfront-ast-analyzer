import { Table } from "@/shared/ui/table/table";
import { Text } from "@/shared/ui/text/text";
import { ResultQueryDataType } from "@/shared/types/task-type";
import { colorConfigByType } from "@/shared/consts/color-config-by-type";

const isExtractedTableData = (
  data: ResultQueryDataType | string,
): data is ResultQueryDataType => {
  return (
    typeof data === "object" &&
    data !== null &&
    "columns" in data &&
    "data" in data &&
    Array.isArray(data.columns) &&
    Array.isArray(data.data)
  );
};

export const ResultTable = ({
  type,
  data,
}: {
  type: "task" | "quest",
  data: ResultQueryDataType | string,
}) => {
  if (isExtractedTableData(data)) {
    const resultData = { columns: data.columns, data: data.data };

    return (
      <>
        <Table
          variant={type === "quest" ? "dark" : "light"}
          data={resultData}
          height="30vh"
        />
        <Text
          margin="0.5vw 0 0"
          color={colorConfigByType[type]}
        >
          Всего строк: {data.row_count}
        </Text>
      </>
    );
  }

  return (
    <Text color={colorConfigByType[type]}>{data}</Text>
  );
};
