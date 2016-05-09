var PageContainer = React.createClass({
  getInitialState: function(){
    return {
          selectedBeer: {},
          allBeers: {},
          breweries: {},
          categories: {},
          beerStyles: {}
    }
  },
  componentWillMount: function(){
    this.loadBeersFromServer()
    this.loadBreweriesFromServer()
    this.loadCategoriesFromServer()
    // this.loadBeerstylesFromServer()
  },
  loadBeersFromServer: function(){
    $.ajax({
      url: '/beers/',
      dataType: 'json',
      method: 'GET',
      success: function(beers){
        this.setState({allBeers: beers});
      }.bind(this),
      error: function(xhr, status, err){
        console.error(this.props.url,status,err.toString())
      }.bind(this)
    });
  },
  loadBreweriesFromServer: function(){
    $.ajax({
      url: '/breweries',
      dataType: 'json',
      method: 'GET',
      success: function(breweries){
        this.setState({breweries: breweries})
      }.bind(this),
      error: function(xhr, status, err){
        console.error(this.props.url,status,err.toString())
      }.bind(this)
    });
  },
  loadCategoriesFromServer: function(){
    $.ajax({
      url: '/categories',
      dataType: 'json',
      method: 'GET',
      success: function(categories){
        this.setState({categories: categories})
      }.bind(this),
      error: function(xhr, status, err){
        console.error(this.props.url,status,err.toString())
      }.bind(this)
    });
  },
  // loadBeerstylesFromServer: function(){
  //   url: '/beer_styles',
  //   dataType: 'json',
  //   method: 'GET',
  //   success: function(beerStyles){
  //     this.setState({beerStyles: beerStyles})
  //   }.bind(this),
  //   error: function(xhr,status,err){
  //     console.error(this.props.url,status,err)
  //   }.bind(this)
  // },
  render: function(){
    return(
      <LeftNav
        beers={this.state.allBeers}
        breweries={this.state.breweries}
        categories={this.state.categories}
        styles={this.state.styles}
        />
    )
  }
});
