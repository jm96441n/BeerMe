var CategoryList = React.createClass({
  render: function(){
    var catNodes = this.props.categories.map(function(cat){
      <Category id={cat.id} category={cat} />
    })
    return(
      <div>
        <h3>Categories</h3>
          <ul>
            {catNodes}
          </ul>
      </div>
    )
  }

})
