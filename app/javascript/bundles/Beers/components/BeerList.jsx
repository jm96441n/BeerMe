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
      <div className='row'>
        <div className='col-md-12'>
          <div className='row'>
            <div className='col-md-12'>
              <h3>Gaze Upon Yonder List of Ales</h3>
            </div>
          </div>
          <div className='row'>
            <div className='col-md-12'>
              <table className='table table-hover' id='beer-list'>
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
            </div>
          </div>
        </div>
      </div>
    )
  }
}
