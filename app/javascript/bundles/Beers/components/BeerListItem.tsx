import React from 'react';
export default class BeerListItem extends React.Component<IBeerProps, {}> {

  constructor(props: IBeerProps) {
    super(props);
  }

  getClass = () => {
    if (this.props.id % 2 == 0) {
      return ('table-danger')
    } else {
      return('table-light')
    }
  }

  render() {
    return (
      <tr className={this.getClass()}>
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
