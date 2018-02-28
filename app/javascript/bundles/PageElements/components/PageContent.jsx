import PropTypes from 'prop-types';
import React from 'react';
import Homepage from './Homepage.jsx';
import BeerList from '../../Beers/components/BeerList.jsx'

export default class PageContent extends React.Component {
  static propTypes = {
    page: PropTypes.string.isRequired,
    beers: PropTypes.array.isRequired
  }
  constructor(props) {
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
