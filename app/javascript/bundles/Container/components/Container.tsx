import React from 'react';
import request from 'axios';
import PageContent from '../../PageElements/components/PageContent'
import Header from '../../PageElements/components/Header'
import Sidemenu from '../../PageElements/components/Sidemenu'

interface IContainerProps { }

const initialState: IContainerState = {
  page: 'home',
  beers: [],
  beerStyles: [],
  categories: [],
  beer: {} as IBeer,
  recommendedBeers: [],
  currentPage: 1,
  lastPage: 0,
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

  onListItemClick = (id: number) => {
    this.getBeer(id);
  }

  setHome = () => {
    this.setState({
      page: 'home',
      beers: [],
      categories: this.state.categories,
      beerStyles: this.state.beerStyles,
      beer: {} as IBeer,
      recommendedBeers: [],
      currentPage: 1,
      lastPage: this.state.lastPage
    } as IContainerState)
  }

  getBeers = (page: number = 1, searchTerms: any = {}) => {
    let name: string = searchTerms.name ? searchTerms.name : '';
    let style: string = searchTerms.beerStyle ? searchTerms.beerStyle : '';
    let category: string = searchTerms.category ? searchTerms.category : '';
    return request({
      method: 'GET',
      url: `/beers.json?page=${page}&name=${name}&style=${style}&category=${category}`,
      responseType: 'json'
    }).then((response) => {
      let currentPage: number = response['data']['meta']['current_page'];
      let lastPage: number = response['data']['meta']['last_page'];
      let beers = response['data']['data'];
      this.setState({
        page: 'beers',
        beers: beers,
        beer: {} as IBeer,
        currentPage: currentPage,
        lastPage: lastPage
      } as IContainerState)
      // only load beer styles and categories if they have not yet been loaded
      if (this.state.beerStyles.length < 2) {
        this.getBeerStyles()
      }
    })
  }

  getBeerStyles = () => {
    return request({
      method: 'GET',
      url: '/beer_styles',
      responseType: 'json'
    }).then((response) => {
      let beerStyles = response['data']['data']
      this.setState({ beerStyles })
      this.getCategories();
    })
  }

  getCategories = () => {
    return request({
      method: 'GET',
      url: '/categories',
      responseType: 'json'
    }).then((response) => {
      let categories = response['data']['data']
      this.setState({ categories })
    })
  }

  getRecommendedBeers = (id: number) => {
    let beers: Array<IBeer> = [];
    request({
      method: 'GET',
      url: `/recommended_beers?beer_id=${id}`,
      responseType: 'json'
    }).then((response) => {
      beers = response['data']['data']
    })
    return beers
  }

  getBeer = (id: number) => {
    return request ({
      method: 'GET',
      url: `/beers/${id}.json`,
      responseType: 'json'
    }).then((response) => {
      let beer = response['data']['data']['attributes'];
      let recommendedBeers: Array<IBeer> = [] //this.getRecommendedBeers(beer['id'])
      this.setState({
        page: 'beer',
        beers: [],
        beerStyles: this.state.beerStyles,
        categories: this.state.categories,
        beer: beer,
        recommendedBeers: recommendedBeers,
        currentPage: 1,
        lastPage: this.state.lastPage
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
      let beer = response['data']['data']['attributes'];
      let recommendedBeers: Array<IBeer> = []; // this.getRecommendedBeers(beer['id'])
      this.setState({
        page: 'beer',
        beers: [],
        beerStyles: this.state.beerStyles,
        categories: this.state.categories,
        beer: beer,
        recommendedBeers: recommendedBeers,
        currentPage: 1,
        lastPage: this.state.lastPage
      } as IContainerState)
    })
  }

  render() {
    return (
      <div>
        <Header onClick={ this.setHome } />
        <Sidemenu onClick={ this.onSideBarClick } />
        <div className='container page_container'>
          <div id='page_content' className='h-100'>
            <PageContent
              page={ this.state.page }
              beers={ this.state.beers }
              beerStyles={ this.state.beerStyles }
              categories={ this.state.categories }
              beer={ this.state.beer }
              onListItemClick={ this.onListItemClick }
              onPaginationClick={ this.getBeers }
              currentPage={ this.state.currentPage }
              lastPage={ this.state.lastPage }
              search= { this.getBeers }
            />
          </div>
        </div>
      </div>
    )
  }
}
