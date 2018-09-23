interface IContainerState {
  page: string;
  beers: Array<IBeer>;
  beer: IBeer;
  beerStyles: Array<IBeerType>;
  categories: Array<IBeerType>;
  recommendedBeers: Array<IBeer>;
  currentPage: number;
  lastPage: number;
}
