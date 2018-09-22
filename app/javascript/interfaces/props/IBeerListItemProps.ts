interface IBeerListItemProps {
  name: string;
  abv: number;
  ibu: number;
  id: number;
  brewery_name: string;
  beer_style: string;
  onClick: (id: number) => void;
}
