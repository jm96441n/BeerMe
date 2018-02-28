import PropTypes from 'prop-types';
import React from 'react';
import request from 'axios';
import PageContent from '../../PageElements/components/PageContent.jsx'
import Header from '../../PageElements/components/Header.jsx'
import Sidemenu from '../../PageElements/components/Sidemenu.jsx'

export default class Container extends React.Component {
  constructor(){
    super();
    this.state = {
      page: 'home',
      beers: []
    }
  }

  onSideBarClick = (page) => {
    switch (page) {
      case 'beers':
        this.getBeers();
        break;
      case 'random':
        this.setHome();
        break;
    }
  }

  setHome = () => {
    this.setState({
      page: 'home',
      beers: []
    })
  }

  getBeers = () => {
    var self = this;
    return request({
      method: 'GET',
      url: '/beers.json',
      responseType: 'json'
    }).then((response) => {
      let beers = response['data']['records']
      this.setState({
        page: 'beers',
        beers: beers
      })
    })
  }

  render() {
    return (
      <div>
        <Header onClick={this.setHome}/>
        <Sidemenu onClick={this.onSideBarClick}/>
        <div className='container page_container'>
          <div id='page_content' className='h-100'>
            <PageContent
              page={this.state.page}
              beers={this.state.beers}
            />
          </div>
        </div>
      </div>
    )
  }
}
