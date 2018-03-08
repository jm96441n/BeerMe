import React from 'react';
import request from 'axios';
import PageContent from '../../PageElements/components/PageContent'
import Header from '../../PageElements/components/Header'
import Sidemenu from '../../PageElements/components/Sidemenu'

interface IContainerProps { }

const initialState: IContainerState = {
  page: 'home',
  beers: [],
  beer: {} as IBeer
}

export default class Container extends React.Component<IContainerProps, IContainerState> {
  constructor(props: IContainerProps){
    super(props);
    this.state = initialState;
  }

  onSideBarClick = (page: string) => {
    switch (page) {
      case 'beers':
        this.getBeers();
        break;
      case 'random':
        this.getRandomBeer();
        break;
    }
  }

  setHome = () => {
    this.setState({
      page: 'home',
      beers: [],
      beer: {} as IBeer
    } as IContainerState)
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
        beers: beers,
        beer: {} as IBeer
      } as IContainerState)
    })
  }

  getRandomBeer = () => {
    var self = this;
    return request({
      method: 'GET',
      url: '/random_beer.json',
      responseType: 'json'
    }).then((response) => {
      let beer = response['data']['record']
      debugger;
      this.setState({
        page: 'random',
        beers: [],
        beer: beer
      } as IContainerState)
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
              page={ this.state.page }
              beers={ this.state.beers }
              beer={ this.state.beer }
            />
          </div>
        </div>
      </div>
    )
  }
}
