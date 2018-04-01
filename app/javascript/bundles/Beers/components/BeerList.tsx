import React from 'react';
import BeerListItem from './BeerListItem';
import PaginationLinks from '../../PageElements/components/PaginationLinks'

export default class BeerList extends React.Component<IBeerListProps> {

  constructor(props: IBeerListProps) {
    super(props);
  }

  onListItemClick = (id: number) => {
    this.props.onListItemClick(id);
  }

  render() {
    let i: number = 0;
    let beerNodes = this.props.beers.map((beerResponse: any, index: number) => {
      let beer: IBeer = beerResponse['attributes'];
      i++;
      return (
        <BeerListItem
          id={i}
          key={index}
          name={beer['name']}
          abv={beer['abv']}
          ibu={beer['ibu']}
          onClick={this.onListItemClick}
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
          <div className='row'>
            <PaginationLinks
              currentPage={ this.props.currentPage }
              lastPage={ this.props.lastPage }
            />
          </div>
        </div>
      </div>
    )
  }
}
