import { Control, Controller, FieldValues, Path, PathValue, RegisterOptions } from "react-hook-form";

import { Text } from "../../text/text";
import { Error } from "../error/error";

import styles from "./editabale-field.module.scss";

type EditableFieldProps<T extends FieldValues> = {
  label: string,
  name: Path<T>,
  control: Control<T>,
  type?: string,
  rules?: RegisterOptions<T>,
  errorMessage?: string,
};

export const EditableField = <T extends FieldValues>({
  label,
  name,
  control,
  type,
  rules,
  errorMessage,
}: EditableFieldProps<T> ) => {
  return (
    <div
      className={styles.editableRow}
    >
      <Text size="1vw">{label}</Text>
      <Controller
        name={name}
        control={control}
        rules={rules}
        defaultValue={"" as PathValue<T, typeof name>}
        render={({field}) => (
          <div className={styles.inputContainer}>
            <input
              {...field}
              type={type}
              id={name}
              className={styles.input}
              autoComplete="off"
            />
            {errorMessage && <Error message={errorMessage} right="0" top="1.3vw"/>}
          </div>
        )}
      />
    </div>
  );
};
