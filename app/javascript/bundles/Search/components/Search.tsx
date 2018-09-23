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

  clearSearch = () => {
    let searchTerms: any = {
      name: '',
      beerStyle: '',
      category: ''
    }
    this.setState(searchTerms);
    this.props.search(searchTerms);
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
            types={ this.props.beerStyles }
            setType={ this.handleStyleChange }
            type='style'
            selectedType={ this.state.beerStyle }
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
            selectedType={ this.state.category }
          />
        </div>
        <div className='row'>
          <div id='submit' className='col-md-1'>
            <button id='beer-search-button' type='button' className='btn btn-primary search-btns' onClick={ this.searchSubmission }>
              Find Beers
            </button>
          </div>
        </div>
        <div className='row'>
          <div id='clear'className='col-md-1'>
            <button id='clear-search-button' type='button' className='btn btn-secondary search-btns' onClick={ this.clearSearch }>
              Clear Search
            </button>
          </div>
        </div>
      </div>
    )
  }

}
