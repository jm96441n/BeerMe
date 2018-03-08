import React from 'react';
import Homepage from './Homepage';
import BeerList from '../../Beers/components/BeerList';
import Beer from '../../Beers/components/Beer'

export default class PageContent extends React.Component<IPageContentProps> {
  constructor(props: IPageContentProps) {
    super(props);

    this.state = {};
  }

  render () {
    if(this.props.page == 'beers') {
      return (
        <BeerList
          beers={ this.props.beers }
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
        />
      )
    }else {
      return (
        <Homepage />
      )
    }
  }
}
