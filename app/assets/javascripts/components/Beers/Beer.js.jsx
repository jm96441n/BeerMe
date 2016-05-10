var Beer =  React.createClass({
  render: function(){
    return(
      <li className="beer-list-item">
        <div>
          <p>Name: {this.props.beer.name}</p>

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
