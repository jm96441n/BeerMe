interface IPageContentProps {
  beers: Array<IBeer>;
  page: string;
  beer: IBeer;
  onListItemClick: (id: number) => void;
}
