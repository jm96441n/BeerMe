interface IBeerListItemProps {
  name: string;
  abv: number;
  ibu: number;
  id: number;
  onClick: (id: number) => void;
}
