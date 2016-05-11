var BeerList = React.createClass({
  render: function(){
    var beerNodes = this.props.beers.map(function(beer){
      return(
        <Beer key={beer.id} beer={beer} />
      )
    })
    if(this.props.beers == []){
      return(
        <div>
          <p>Loading Beers....</p>
        </div>
      )
    }else{
      return(
        <div className="beerList">
          <h3>All the Beers!</h3>
            <ul>
              {beerNodes}
            </ul>
        </div>
      )
    }
  }
})
