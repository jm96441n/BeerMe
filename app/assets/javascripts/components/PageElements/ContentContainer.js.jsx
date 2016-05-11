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
        <h2>Here's some stuff</h2>
      )
    }else if(this.props.content == 'beers'){
      return(
        <BeerList beers={this.props.beers} />

      )
    }else if(this.props.content == 'style'){
      return(
        <StyleList styles={this.props.styles} />
      )
    }else if(this.props.content == 'cat'){
      return(
        <CategoryList categories={this.props.categories}
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
