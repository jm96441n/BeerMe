var StyleList = React.createClass({
  render: function(){
    var styleNodes = this.props.styles.map(function(style){
      return(
        <Style key={style.id} style={style} />
      )
    })
    return(
      <div>
        <h3>Styles!</h3>
          <ul>
            {styleNodes}
          </ul>
      </div>
    )
  }

})
