import React from 'react';
import TypeSelect from './TypeSelect'

const initialState: ISearchState = {
  name: '',
  beerStyle: '',
  category: ''
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

  handleCategoryChange = (category: string) => {
    this.setState({ category });
  }

  searchSubmission = () => {
    let searchTerms: any = {
      name: this.state.name,
      beerStyle: this.state.beerStyle,
      category: this.state.category
    }
    this.props.search(searchTerms)
  }

  render() {
    return(
      <div id='search' className='row'>
        <div id='name-search' className='col-md-3'>
          <div>
            <label htmlFor='name'>
              Name
            </label>
          </div>
          <input id='name' name='name' onChange={ this.onNameChange }/>
        </div>
        <div id='style-search' className='col-md-3'>
          <label htmlFor='style'>
            Style
          </label>
          <TypeSelect
            types={this.props.beerStyles}
            setType={this.handleStyleChange}
            type='style'
          />
        </div>
        <div id='category-search' className='col-md-3'>
          <label htmlFor='category'>
            Category
          </label>
          <TypeSelect
            types={this.props.categories}
            setType={this.handleCategoryChange}
            type='category'
          />
        </div>
        <div id='submit' className='col-md-2 align-text-bottom'>
          <button id='beer-search-button' type='button' className='btn btn-primary' onClick={ this.searchSubmission }>
            Find Beers
          </button>
        </div>
      </div>
    )
  }

}
