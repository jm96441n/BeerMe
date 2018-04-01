interface IBeerListProps {
  beers: Array<IBeer>;
  onListItemClick: (id: number) => void;
  currentPage: number;
  lastPage: number;
}
