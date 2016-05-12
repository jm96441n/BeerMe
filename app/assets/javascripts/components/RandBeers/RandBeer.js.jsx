var RandBeer = React.createClass({
  render: function(){
    return(
      <div>
        <h2>Here's Your Beer!</h2>
        <p>Name: {this.props.beer.name}</p>
        <p>Brewery: {this.props.beer.brewery.name}</p>
        <p>Description: {this.props.beer.description}</p>
        <p>Category: {this.props.beer.category.name}</p>
        <p>Style: {this.props.beer.beer_style.name}</p>
        <p>ABV: {this.props.beer.abv}</p>
        <p>IBU: {this.props.beer.ibu}</p>

      </div>
    )
  }
})
