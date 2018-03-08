import React from 'react';
import Homepage from './Homepage';
import BeerList from '../../Beers/components/BeerList'

interface IBeer {
  name: string,
  abv: number,
  ibu: number,
  id: number
}

interface IPageContentProps {
  beers: Array<IBeer>,
  page: string
}

export default class PageContent extends React.Component<IPageContentProps> {
  constructor(props: IPageContentProps) {
    super(props);
  }

  render () {
    if( this.props.page == 'beers' ) {
      return (
        <BeerList
          beers={ this.props.beers }
        />
      )
    }else {
      return (
        <Homepage />
      )
    }
  }
}
