var Category = React.createClass({
  render: function(){
    return(
      <li>
        <div>
          <p>Category: {this.props.category.name}</p>
        </div>
      </li>
    )
  }
})
