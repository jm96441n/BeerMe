var RandBeerChooser = React.createClass({
  loadRandomBeerFromServer: function(){
    $.ajax({
      method: "GET",
      dataType: 'json',
      url: '/beers/random'
    })
  },
  render: function(){
    var stylesNodes = this.props.styles.map(function(beer_style){
      return(
        <div key={beer_style.id}>
          <input type="checkbox" name="style" value={beer_style.name} />{beer_style.name}
        </div>
      )
    })
    return(
      <div>
        <h3>Choose at least one to get a beer of that style, or choose none for a completely random beer!</h3>
        <p>Styles</p>
        <form method="GET" action="/beers/random">
          {stylesNodes}
        <input method="submit" type="button" value="Beer Me!" />
        </form>
      </div>
    )
  }
})
