interface ITypeSelectProps {
  types: Array<IBeerType>;
  setType: ((typeName: string) => void);
  type: string;
}
