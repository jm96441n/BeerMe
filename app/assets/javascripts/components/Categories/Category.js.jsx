var Category = React.createClass({
  render: function(){
    <li>
      <div>
        <p>Category: {this.props.category.name}</p>
      </div>
    </li>
  }
})
