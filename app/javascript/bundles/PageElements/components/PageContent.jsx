import PropTypes from 'prop-types';
import React from 'react';
import Homepage from './Homepage.jsx';
import CategoryList from '../../Categories/components/CategoryList.jsx'

export default class PageContent extends React.Component {
  constructor(props) {
    super(props);

    this.state = { page: 'Home' }
    this.switchPage = this.switchPage.bind(this)
  }

  switchPage(page) {
    switch(page) {
      case 'Categories':
        this.getCategories();
        break;
      case 'Home':
        this.setHome();
        break;
    }
  }

  setHome() {
    this.setState({ page: 'Home' })
  }

  getCategories() {
    var self = this;

    fetch('/categories.json').then((response) => {
      return response.json();
    }).then((response) => {
      self.setState({
        categories: response,
        page: 'Categories'
      });
    });
  }

  render () {
    if( this.state.categories ) {
      return (
        <CategoryList
          categories={ this.state.categories }
        />
      )
    }else {
      return (
        <Homepage
          onButtonClick={ this.switchPage }
        />
      )
    }
  }
}
