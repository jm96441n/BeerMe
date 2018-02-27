import PropTypes from 'prop-types';
import React from 'react';
import request from 'axios';
import Homepage from './Homepage.jsx';
import BeerList from '../../Beers/components/BeerList.jsx'

export default class PageContent extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      page: 'Home'
    }
  }

  switchPage = (page) => {
    switch(page) {
      case 'Categories':
        this.getCategories();
        break;
      case 'Home':
        this.setHome();
        break;
    }
  }

  setHome = () => {
    this.setState({ page: 'Home' })
  }

  getBeers = () => {
    var self = this;
    return request({
      method: 'GET',
      url: '/beers.json',
      responseType: 'json'
    }).then((response) => {
      let beers = response['data']['data']
      this.setState({
        page: 'BeerList',
        beers: beers
      })
    })
  }

  onHomepageButtonClick = (page) => {
    this.switchPage(page)
  }

  render () {
    if( this.state.beers ) {
      return (
        <BeerList
          beers={ this.state.beers }
        />
      )
    }else {
      return (
        <Homepage />
      )
    }
  }
}
