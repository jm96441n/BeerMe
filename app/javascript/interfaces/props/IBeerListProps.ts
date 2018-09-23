interface IBeerListProps {
  beers: Array<IBeer>;
  beerStyles: Array<IBeerType>;
  categories: Array<IBeerType>;
  onListItemClick: (id: number) => void;
  currentPage: number;
  lastPage: number;
  onPaginationClick: (pageNumber: number) => void;
  search: (searchTerms: any) => void;
}
