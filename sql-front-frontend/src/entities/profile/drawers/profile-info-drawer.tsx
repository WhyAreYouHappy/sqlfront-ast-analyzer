import { useForm } from "react-hook-form";

import { Button } from "@/shared/ui/button/button";
import { Title } from "@/shared/ui/title/title";
import { Drawer, type DrawerProps } from "@/shared/ui/drawer/drawer";
import { EditableField } from "@/shared/ui/form/editable-field/editabale-field";

import styles from "./profile-info-drawer.module.scss";
import { useCallback, useEffect } from "react";

type ProfileInfoDrawerProps = DrawerProps & {
  data: {
    login?: string;
    fullname?: string;
    group?: string;
    email?: string;
  },
};

type FormType = {
  fullname: string,
  group: string,
  email: string,
};

const formConfig = [
  {
    name: "fullname",
    label: "фио",
    type: "text",
    rules: {
      pattern: {
        value: /^[а-яёА-ЯЁ\s-]{1,90}$/,
        message: "некорректное фио",
      },
    },
  },
  {
    name: "group",
    label: "группа",
    type: "text",
    rules: {
      pattern: {
        value: /^[ЁёА-я]{4}-\d{2}-\d{2}$/,
        message: "некорректная группа",
      },
    },
  },
  {
    name: "email",
    label: "почта",
    type: "text",
    rules: {
      required: "введите почту",
      pattern: {
        value: /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/,
        message: "некорректная почта",
      },
    },
  },
] as const;

export const ProfileInfoDrawer = ({
  isOpen,
  onClose,
  data: { login, fullname, group, email }
}: ProfileInfoDrawerProps ) => {
  const { control, handleSubmit, reset, formState: { errors, isDirty, isValid } } = useForm<FormType>({
    mode: "onChange",
    defaultValues: { fullname, group, email },
  });

  useEffect(() => {
    reset({ fullname, group, email });
  }, [fullname, group, email, reset, isOpen]);

  const onSubmit = useCallback(() => {
    // TODO: save data
  }, []);

  return (
    <Drawer
      isOpen={isOpen}
      onClose={onClose}
      width="50vw"
      padding="5vw 4vw"
    >
      <Title
        as="p"
        size="5vw"
        color="black"
      >
        {login}
      </Title>
      <form onSubmit={handleSubmit(onSubmit)} className={styles.infoBlock}>
        {formConfig.map(({ name, label, type, rules }) => (
          <EditableField
            key={name}
            label={label}
            name={name}
            type={type}
            rules={rules}
            control={control}
            errorMessage={errors[name]?.message}
          />
        ))}
        {(isValid && isDirty) && (
          <Button
            color="black"
            width="10vw"
            padding="0.3vw"
            type="submit"
          >
            сохранить
          </Button>
        )}
      </form>
    </Drawer>
  );
};
