var PageContainer = React.createClass({
  getInitialState: function(){
    return {
          randBeer: '',
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
      randBeer: randBeer,
      content: 'randBeer'
    })
  },
  resetContent: function(){
    this.setState({content: ''})
  },
  render: function(){
    return(
      <div>
          <nav className="navbar navbar-static-top row" role="navigation">
            <TopNav resetContent={this.resetContent}/>
          </nav>
        <div className="row">
          <div className="col-md-2">
            <LeftNav
              getContent={this.getContent}
              getBeers={this.getBeers}
              getBreweries={this.getBreweries}
              getCategories={this.getCategories}
              getStyles={this.getStyles}
              getRandBeer={this.getRandBeer}
              resetContent={this.resetContent}
            />
          </div>
          <div className="col-md-10">
            <ContentContainer
              beers={this.state.allBeers}
              breweries={this.state.breweries}
              categories={this.state.categories}
              styles={this.state.styles}
              randBeer={this.state.randBeer}
              content={this.state.content}
            />
          </div>
        </div>
      </div>
    )
  }
});
