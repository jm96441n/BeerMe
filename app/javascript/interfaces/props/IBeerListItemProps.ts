interface IBeerListItemProps {
  name: string;
  abv: number;
  ibu: number;
  id: number;
  brewery_name: string;
  beer_style: string;
  category: string;
  onClick: (id: number) => void;
}
