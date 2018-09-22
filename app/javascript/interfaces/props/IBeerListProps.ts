interface IBeerListProps {
  beers: Array<IBeer>;
  beerStyles: Array<IBeerStyle>;
  onListItemClick: (id: number) => void;
  currentPage: number;
  lastPage: number;
  onPaginationClick: (pageNumber: number) => void;
  search: (searchTerms: any) => void;
}
