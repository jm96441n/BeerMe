import PropTypes from 'prop-types';
import React from 'react';

export default class BeerListItem extends React.Component {
  static propTypes = {
    id: PropTypes.number.isRequired,
    name: PropTypes.string.isRequired,
    abv: PropTypes.number.isRequired,
    ibu: PropTypes.number.isRequired
  }

  constructor(props) {
    super(props);

    if(this.props.id % 2 == 0) {
      this.state = { color: 'table-danger' }
    }else {
      this.state = { color: 'table-light' }
    }
  }

  render() {
    return (
      <tr className={this.state.color}>
        <th scope='row'>
          {this.props.name}
        </th>
        <td className="text-center">
          {this.props.abv}%
        </td>
        <td className="text-center">
          {this.props.ibu}
        </td>
      </tr>
    )
  }
}
