import { Text } from "../../text/text";
import { colors } from "../../colors";

type ErrorProps = {
  message?: string,
  color?: keyof typeof colors,
  right?: string,
  top?: string,
  gridColumn?: string,
  gridRow?: string,
};

export const Error = ({
  message,
  color="red",
  right="auto",
  top="auto",
  gridColumn="auto",
  gridRow="auto",
}: ErrorProps) => {
  return (
    <Text
      size="0.7vw"
      color={color}
      right={right}
      top={top}
      gridColumn={gridColumn}
      gridRow={gridRow}
      align="right"
      alignSelf="right"
      position="absolute"
    >
      {message}
    </Text>
  );
};
