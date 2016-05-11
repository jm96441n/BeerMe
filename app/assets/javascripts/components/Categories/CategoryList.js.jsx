var CategoryList = React.createClass({
  render: function(){
    var catNodes = this.props.categories.map(function(cat){
      return(
        <Category key={cat.id} category={cat} />
      )
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
