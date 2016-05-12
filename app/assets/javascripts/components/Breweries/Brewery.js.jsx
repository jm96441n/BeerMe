var Brewery = React.createClass({
  render: function(){
    return(
      <li>
        <div>
          <p>Brewery: {this.props.brewery.name}</p>
        </div>
      </li>
    )
  }
})
