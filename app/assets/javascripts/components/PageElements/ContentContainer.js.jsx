var ContentContainer = React.createClass({
  getInitialState: function(){
    return{ beers: this.props.beers}
  },
  componentWillReceiveProps: function(nextProps){
    this.setState({beers: nextProps.beers})
  },
  render: function(){
    if(this.props.content == ''){
      return(
        <BeerList beers={this.props.beers} />
      )
    }else if(this.props.content == 'beers'){
      return(
      <h2>Here's some stuff</h2>
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
