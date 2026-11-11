export type DefaultStateType = {
  isLoading: boolean;
  error: string | null;
};

export type AsyncDataType<DataType> = DefaultStateType & {
  data: DataType | null;
};

export const InitialAsyncDataState = {
  data: null,
  isLoading: false,
  error: null,
};
