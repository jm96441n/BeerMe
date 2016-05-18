var ContentContainer = React.createClass({
  // getInitialState: function(){
  //   return{selectedBeer: this.props.selectedBeer}
  // },
  // componentWillReceiveProps: function(nextProps){
  //   this.setState({selectedBeer: nextProps.selectedBeer})
  // },
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
        <CategoryList categories={this.props.categories} />
      )
    }else if(this.props.content == 'randBeer'){
      return(
        <RandBeerChooser styles={this.props.randBeer} />
      )
    }else if(this.props.content == 'brewery'){
      return(
        <BreweryList breweries={this.props.breweries} />
      )
    }
  }
})
