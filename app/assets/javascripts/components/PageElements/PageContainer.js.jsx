var PageContainer = React.createClass({
  getInitialState: function(){
    return {
          selectedBeer: '',
          allBeers: [],
          breweries: [],
          categories: [],
          styles: [],
          content: ''
    }
  },
  getBeers: function(beers){
    this.setState({
      allBeers: beers,
      content: 'beers'
    })
  },
  getBreweries: function(breweries){
    this.setState({
      breweries: breweries,
      content: 'brewery'
    })
  },
  getCategories: function(categories){
    this.setState({
      categories: categories,
      content: 'cat'
    })
  },
  getStyles: function(styles){
    this.setState({
      styles: styles,
      content: 'style'
    })
  },
  getRandBeer: function(randBeer){
    this.setState({
      selectedBeer: randBeer,
      content: 'randBeer'
    })
  },
  resetContent: function(){
    this.setState({content: ''})
  },
  render: function(){
    return(
      <div>
        <LeftNav
        getContent={this.getContent}
        getBeers={this.getBeers}
        getBreweries={this.getBreweries}
        getCategories={this.getCategories}
        getStyles={this.getStyles}
        getRandBeer={this.getRandBeer}
        resetContent={this.resetContent}
        />
        <ContentContainer
          beers={this.state.allBeers}
          breweries={this.state.breweries}
          categories={this.state.categories}
          styles={this.state.styles}
          selectedBeer={this.state.selectedBeer}
          content={this.state.content}
        />
      </div>
    )
  }
});
