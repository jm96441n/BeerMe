var ContentContainer = React.createClass({
  render: function(){
    if(this.props.content == ''){
      return(
        <h2>Here's some stuff</h2>
      )
    }else if(this.props.content == 'beers'){
      return(
        <h2>This is where all the beers go</h2>
      )
    }else if(this.props.content == 'style'){
      return(
        <h2>This is where styles go</h2>
      )
    }else if(this.props.content == 'cat'){
      return(
        <h2>This is where categories go</h2>
      )
    }else if(this.props.content == 'randBeer'){
      return(
        <h2>This is where a random beer would go</h2>
      )
    }else if(this.props.content == 'brewery'){
      return(
        <h2>This is where breweries go</h2>
      )
    }
  }
})
