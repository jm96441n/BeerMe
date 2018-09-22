import React from 'react';

const initialState: ISearchState = {
  name: ''
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

  searchSubmission = () => {
    let searchTerms: any = {
      name: this.state.name
    }
    this.props.search(searchTerms)
  }

  render() {
    return(
      <div id='search' className='row'>
        <div id='name-search' className='col-md-4'>
          <label htmlFor='name'>
            Name
          </label>
          <input id='name' onChange={ this.onNameChange }/>
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
