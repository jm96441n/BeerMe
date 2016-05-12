var BreweryList = React.createClass({
  render: function(){
    var brewNodes = this.props.breweries.map(function(brew){
      return(
        <Brewery key={brew.id} brewery={brew} />
      )
    })
    return(
      <div>
        <h3>Breweries!</h3>
        <ul>
          {brewNodes}
        </ul>
      </div>
    )
  }

})
