import { usePathname, useRouter, useSearchParams } from "next/navigation";

import styles from "./select.module.scss";

type SelectProps = {
  name: string,
  options: {
    label: string,
    value: string | number,
  }[],
  onChange?: (_: React.ChangeEvent<HTMLSelectElement>) => void,
  defaultValue?: string,
};

export const Select = ({
  name,
  options,
}: SelectProps) => {
  const searchParams = useSearchParams();
  const pathname = usePathname();
  const { replace } = useRouter();

  const defaultValue = searchParams.get(name)?.toString();
 
  const handleSearch = (option: string | number) => {
    const params = new URLSearchParams(searchParams);
    if (option) {
      params.set(name, option.toString());
    } else {
      params.delete(name);
    }
    replace(`${pathname}?${params.toString()}`);
  };

  return (
    <select
      name={name}
      onChange={(e) => handleSearch(e.target.value)}
      className={styles.select}
    >
      {options.map(({ label, value }) => (
        <option
          key={value}
          value={value}
          defaultValue={defaultValue}
        >
          {label}
        </option>
      ))}
    </select>
  );
};
