interface IContainerState {
  page: string;
  beers: Array<IBeer>;
  beer: IBeer;
  recommendedBeers: Array<IBeer>;
  currentPage: number;
  lastPage: number;
}
