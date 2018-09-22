import React from 'react';
import StyleSelect from './StyleSelect'

const initialState: ISearchState = {
  name: '',
  beerStyle: ''
}

export default class Search extends React.Component<ISearchProps, ISearchState> {
  constructor(props: ISearchProps) {
    super(props);
    this.state = initialState;
  }

  onNameChange = (event: any) => {
    let name: string = event.target.value;
    this.setState({ name });
  }

  handleStyleChange = (beerStyle: string) => {
    this.setState({ beerStyle });
  }

  searchSubmission = () => {
    let searchTerms: any = {
      name: this.state.name,
      beerStyle: this.state.beerStyle
    }
    this.props.search(searchTerms)
  }

  render() {
    return(
      <div id='search' className='row'>
        <div id='name-search' className='col-md-4'>
          <div>
            <label htmlFor='name'>
              Name
            </label>
          </div>
          <input id='name' name='name' onChange={ this.onNameChange }/>
        </div>
        <div id='style-search' className='col-md-4'>
          <label htmlFor='style'>
            Style
          </label>
          <StyleSelect
            beerStyles={this.props.beerStyles}
            setStyle={this.handleStyleChange}
          />
        </div>
        <div id='submit' className='col-md-2'>
          <button type='button' className='btn btn-primary' onClick={ this.searchSubmission }>
            Find Beers
          </button>
        </div>
      </div>
    )
  }

}
