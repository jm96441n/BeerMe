import PropTypes from 'prop-types';
import React from 'react';
import BeerListItem from './BeerListItem.jsx';

export default class BeerList extends React.Component {
  static propTypes = {
    beers: PropTypes.array.isRequired
  }

  constructor(props) {
    super(props);

    this.state = {}
  }

  render() {
    let beerNodes = this.props.beers.map((beer, index) => {
      return (
        <BeerListItem
          id={index}
          key={index}
          name={beer['name']}
          abv={beer['abv']}
          ibu={beer['ibu']}
        />
      )
    })
    return (
      <table className='table table-hover'>
        <thead>
          <tr>
            <th scope='col'>
              Name
            </th>
            <th scope='col'>
              ABV
            </th>
            <th scope='col'>
              IBU
            </th>
          </tr>
        </thead>
        <tbody className='table-active'>
          {beerNodes}
        </tbody>
      </table>
    )
  }
}
