interface IPageContentProps {
  beers: Array<IBeer>;
  beerStyles: Array<IBeerStyle>;
  page: string;
  beer: IBeer;
  onListItemClick: (id: number) => void;
  currentPage: number;
  lastPage: number;
  onPaginationClick: (pageNumber: number) => void;
  search: (pageNumber: number, searchTerms: any) => void;
}
