var LeftNav = React.createClass({
  handleRandBeerClick: function(){
    this.props.getContent('randBeer')
  },
  handleCatClick: function(){
    this.props.getContent('cat')
  },
  handleStyleClick: function(){
    this.props.getContent('style')
  },
  handleBreweryClick: function(){
    this.props.getContent('brewery')
  },
  handleBeersClick: function(){
    this.props.getContent('beers')
  },
  render: function(){
    var self = this;
    return(
      <div>
        <ul>
          <li><button onClick={self.handleBeersClick}>Beers</button></li>
          <li><button onClick={self.handleCatClick}>Categories</button></li>
          <li><button onClick={self.handleStyleClick}>Styles</button></li>
          <li><button onClick={self.handleBreweryClick}>Breweries</button></li>
          <li><button onClick={self.handleRandBeerClick}>Random Beer</button></li>
        </ul>
      </div>
    )
  }
})
