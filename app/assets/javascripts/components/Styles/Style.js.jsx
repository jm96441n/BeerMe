var Style = React.createClass({
  render: function(){
    return(
      <li>
        <div>
          <p>Style: {this.props.style.name}</p>
          <p>Category: {this.props.style.category.name}</p>
        </div>
      </li>
    )
  }
})
