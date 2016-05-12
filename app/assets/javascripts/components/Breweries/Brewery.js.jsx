var Brewery = React.createClass({
  render: function(){
    return(
      <li>
        <div>
          <p>Brewery: {this.props.brewery.name}</p>
          <p>Street Address: {this.props.brewery.address1},{this.props.brewery.address2}, {this.props.brewery.city}, {this.props.brewery.state}, {this.props.brewery.code}, {this.props.brewery.country}</p>
          <p>Phone: {this.props.brewery.phone}</p>
          <p>Website: {this.props.brewery.website}</p>
          <p>About: {this.props.brewery.description}</p>
        </div>
      </li>
    )
  }
})
