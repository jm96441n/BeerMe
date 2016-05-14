var Brewery = React.createClass({
  render: function(){
    return(
      <li className="list-item" style={{listStyle: 'none'}}>
        <div className="panel panel-primary">
          <div className="panel-heading">
            <h5>{this.props.brewery.name}</h5>
          </div>
          <div className="panel-body">
            <p>Website: <a href={this.props.brewery.website}>{this.props.brewery.website}</a></p>
            <p>{this.props.brewery.description}</p>
          </div>
        </div>
      </li>
    )
  }
})


//<p>Street Address: {this.props.brewery.address1},{this.props.brewery.address2}, {this.props.brewery.city}, {this.props.brewery.state}, {this.props.brewery.code}, {this.props.brewery.country}</p>
//<p>Phone: {this.props.brewery.phone}</p>
