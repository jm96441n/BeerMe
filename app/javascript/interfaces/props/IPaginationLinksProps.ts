interface IPaginationLinksProps {
  currentPage: number;
  lastPage: number;
  onPaginationClick: (pageNumber: number) => void;
}
