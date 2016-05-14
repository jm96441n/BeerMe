var Category = React.createClass({
  render: function(){
    return(
      <li className="list-item" style={{listStyle: 'none'}}>
        <div className='panel panel-primary'>
          <div className="panel-heading">
          </div>
          <div className="panel-body">
            <h4>{this.props.category.name}</h4>
          </div>
        </div>
      </li>
    )
  }
})
