var Style = React.createClass({
  render: function(){
    return(
      <li className="list-item" style={{listStyle: 'none'}}>
        <div className="panel panel-primary">
          <div className="panel-heading">
            <h5>{this.props.style.name}</h5>
          </div>
          <div className="panel-body">
            <p>Category: {this.props.style.category.name}</p>
          </div>
        </div>
      </li>
    )
  }
})
