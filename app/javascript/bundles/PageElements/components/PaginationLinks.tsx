import React from 'react';

export default class PaginationLinks extends React.Component<IPaginationLinksProps> {
  constructor(props: IPaginationLinksProps) {
    super(props);
  }

  collectLinks = () => {
    let currentPage: number = this.props.currentPage;
    let lastPage: number = this.props.lastPage;
    let paginationLinkItems: Array<any> = [];

    // Get two pages back if they exist
    if (currentPage >= 3) {
      paginationLinkItems.push(this.buildLink(currentPage - 2));
    }
    // Get previous page if it exists
    if (currentPage >= 2) {
      paginationLinkItems.push(this.buildLink(currentPage - 1));
    }
    // Current Page
    paginationLinkItems.push(this.buildLink(currentPage));
    // Get next page if it exists
    if((currentPage + 1) <= lastPage) {
      paginationLinkItems.push(this.buildLink(currentPage + 1));
    }
    // Get two pages forward if it exists
    if((currentPage + 2) <= lastPage) {
      paginationLinkItems.push(this.buildLink(currentPage + 2));
    }
    return paginationLinkItems
  }

  onClick = (event: any) => {
    event.preventDefault();
    let pageValue: number = event.target.getAttribute('href');
    this.props.onPaginationClick(pageValue);
  }

  buildLink = (pageNumber: number) => {
    return (
      <li className='page-item' key={pageNumber}>
        <a className="page-link" href={pageNumber.toString()} onClick={this.onClick}>
          {pageNumber}
        </a>
      </li>
    )
  }

  render() {
    let lastPage: number = this.props.lastPage
    let linkNodes: Array<any> = this.collectLinks();
    return(
      <div className='mx-auto'>
        <ul className='pagination'>
          <li className='page-item'>
            <a className="page-link" href='1' onClick={this.onClick}>
              First Page(1)
            </a>
          </li>
          {linkNodes}
          <li className='page-item'>
            <a className="page-link" href={lastPage.toString()} onClick={this.onClick}>
              Last Page:{lastPage}
            </a>
          </li>
        </ul>
      </div>
    )
  }

}
