var LeftNav = React.createClass({
  // getInitialState: function(){
  //   return {
  //         selectedBeer: '',
  //         allBeers: [],
  //         breweries: [],
  //         categories: [],
  //         styles: [],
  //         content: ''
  //   }
  // },
  handleRandBeerClick: function(){
    this.loadRandomBeerFromServer()
  },
  handleCatClick: function(){
    this.loadCategoriesFromServer()
  },
  handleStyleClick: function(){
    this.loadStylesFromServer()
  },
  handleBreweryClick: function(){
    this.loadBreweriesFromServer()
  },
  handleBeersClick: function(){
    this.loadBeersFromServer()
  },

  loadBeersFromServer: function(){
    $.ajax({
      url: '/beers/',
      dataType: 'json',
      method: 'GET',
      success: function(beers){
        this.props.getBeers(beers)
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
        this.props.getBreweries(breweries)
      }.bind(this),
      error: function(xhr, status, err){
        console.error(this.props.url,status,err.toString())
      }.bind(this)
    });
  },
  loadStylesFromServer: function(){
    $.ajax({
      url: '/beer_styles',
      dataType: 'json',
      method: 'GET',
      success: function(beerStyles){
        this.props.getStyles(beerStyles)
      }.bind(this),
      error: function(xhr,status,err){
        console.error(this.props.url,status,err)
      }.bind(this)
    })
  },
  loadCategoriesFromServer: function(){
    $.ajax({
      url: '/categories',
      dataType: 'json',
      method: 'GET',
      success: function(categories){
        this.props.getCategories(categories)
      }.bind(this),
      error: function(xhr, status, err){
        console.error(this.props.url,status,err.toString())
      }.bind(this)
    });
  },
  loadRandomBeerFromServer: function(){
    $.ajax({
      url: '/beers/random',
      dataType: 'json',
      method: 'GET',
      success: function(beer){
        this.props.getRandBeer(beer)
      }.bind(this),
      error: function(xhr,status,err){
        console.error(this.props.url,status,err.toString())
      }
    })
  },
  render: function(){
    var self = this;
    return(

        <div className="sidebar" role="navigation">
          <div className="sidebar-nav navbar-collapse">
            <ul className="nav nav-pills nav-stacked" id="side-menu">
              <li><a className="btn btn-primary" onClick={self.handleBeersClick}>Beers</a></li>
              <li><a className="btn btn-primary" onClick={self.handleCatClick}>Categories</a></li>
              <li><a className="btn btn-primary" onClick={self.handleStyleClick}>Styles</a></li>
              <li><a className="btn btn-primary" onClick={self.handleBreweryClick}>Breweries</a></li>
              <li><a className="btn btn-primary" onClick={self.handleRandBeerClick}>Random Beer</a></li>
            </ul>
          </div>
        </div>
    )
  }
})
