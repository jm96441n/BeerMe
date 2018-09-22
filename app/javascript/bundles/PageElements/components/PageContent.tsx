import React from 'react';
import Homepage from './Homepage';
import BeerList from '../../Beers/components/BeerList';
import Beer from '../../Beers/components/Beer'

export default class PageContent extends React.Component<IPageContentProps> {
  constructor(props: IPageContentProps) {
    super(props);
  }

  onListItemClick = (id: number) => {
    this.props.onListItemClick(id);
  }

  onPaginationClick = (pageNumber: number) => {
    this.props.onPaginationClick(pageNumber);
  }

  search = (searchTerms: any) => {
    const paginationPage: number = 1;
    this.props.search(paginationPage, searchTerms)
  }

  render() {
    if(this.props.page == 'beers') {
      return (
        <BeerList
          beers={ this.props.beers }
          onListItemClick={ this.onListItemClick }
          currentPage={ this.props.currentPage }
          lastPage={ this.props.lastPage }
          onPaginationClick={ this.onPaginationClick }
          search={ this.search }
        />
      )
    }else if(this.props.page == 'beer') {
      let beer: IBeer = this.props.beer
      return (
        <Beer
          name={ beer.name }
          abv={ beer.abv }
          ibu={ beer.ibu }
          id={ beer.id }
          description={ beer.description }
        />
      )
    }else {
      return (
        <Homepage />
      )
    }
  }
}
