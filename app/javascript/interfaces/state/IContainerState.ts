interface IContainerState {
  page: string;
  beers: Array<IBeer>;
  beer: IBeer;
  beerStyles: Array<IBeerStyle>;
  recommendedBeers: Array<IBeer>;
  currentPage: number;
  lastPage: number;
}
