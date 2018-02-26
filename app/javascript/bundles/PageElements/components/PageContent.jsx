import PropTypes from 'prop-types';
import React from 'react';
import request from 'axios';
import Homepage from './Homepage.jsx';
import CategoryList from '../../Categories/components/CategoryList.jsx'

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

  getCategories = () => {
    var self = this;
    return request({
      method: 'GET',
      url: '/categories.json',
      responseType: 'json'
    }).then((response) => {
      let categories = response['data']['data']
      this.setState({
        page: 'Categories',
        categories: categories
      })
    })
  }

  onHomepageButtonClick = (page) => {
    this.switchPage(page)
  }

  render () {
    if( this.state.categories ) {
      return (
        <CategoryList
          categories={ this.state.categories }
        />
      )
    }else {
      const homeButtonsText = ['Find by Category', 'Give me a Random Beer']
      return (
        <Homepage
          buttonsText={homeButtonsText}
          onButtonClick={ this.onHomepageButtonClick }
        />
      )
    }
  }
}
