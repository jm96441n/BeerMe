var Beer =  React.createClass({
  render: function(){
    var brewName = "We don't have the brewer of this beer. If you know, please shoot us an email and we will update the listing!"
    if(this.props.beer.brewery){
      brewName = this.props.beer.brewery.name
    }
    return(
      <li className="beer-list-item">
        <div>
          <p>Name: {this.props.beer.name}</p>
          <p>Brewery: {brewName}</p>
        </div>
      </li>
    )
  }
})
//
// <p>ABV: {this.props.beer.abv}</p>
// <p>IBU: {this.props.beer.ibu}</p>
// <p>Brewery: {this.props.beer.brewery.name}</p>
// <p>Style: {this.props.beer.style.name}</p>
// <p>Category: {this.props.beer.category.name}</p>
// <p>Description: {this.props.beer.description}</p>
