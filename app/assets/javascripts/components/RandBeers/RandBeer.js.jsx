var RandBeer = React.createClass({
  render: function(){
    var description = "Oops! We don't have a description for this beer yet, if you've had this beer let us know what it's like!"
    if(this.props.beer.description){
      description = this.props.beer.description
    }
    var category = "This beer defies the need for petty categories, if you think it belongs in a particular category let us know!"
    if(this.props.beer.category){
      category = this.props.beer.category.name
    }
    var style = "This beer has too much style to be defined by one, if you think it belongs in a particular style let us know!"
    if(this.props.beer.style){
      style = this.props.beer.style.name
    }
    return(
      <div>
        <h2>Here's Your Beer!</h2>
        <div className="jumbotron">
          <h3>{this.props.beer.name}</h3>
          <p>Brewery: {this.props.beer.brewery.name}</p>
          <p>Description: {description}</p>
          <p>Category: {category}</p>
          <p>Style: {style}</p>
          <p>ABV: {this.props.beer.abv}</p>
          <p>IBU: {this.props.beer.ibu}</p>
          <p><a className="btn btn-primary btn-lg">Save This Beer</a></p>
        </div>
      </div>
    )
  }
})
