var Beer =  React.createClass({
  render: function(){
    var brewName = "We don't have the brewer of this beer. If you know, please shoot us an email and we will update the listing!"
    if(this.props.beer.brewery){
      brewName = this.props.beer.brewery.name
    }
    return(
      <li className="list-item" style={{listStyle: 'none'}}>
        <div className="panel panel-primary">
          <div className="panel-heading">
            <h5>Name: {this.props.beer.name}</h5>
          </div>
          <div className="panel-body">
            <p>Brewery: {brewName}</p>
            <p>{this.props.beer.description}</p>
          </div>
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
