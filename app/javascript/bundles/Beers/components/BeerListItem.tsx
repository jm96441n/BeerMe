import React from 'react';
export default class BeerListItem extends React.Component<IBeerListItemProps, {}> {

  constructor(props: IBeerListItemProps) {
    super(props);
  }

  getClass = () => {
    if (this.props.id % 2 == 0) {
      return ('table-danger')
    } else {
      return('table-light')
    }
  }

  onClick = (event: any) => {
    event.preventDefault();
    this.props.onClick(this.props.id);
  }

  render() {
    return (
      <tr className={ this.getClass() }>
        <th scope='row'>
          <a
            href='#'
            onClick={ this.onClick }
            className='beer-list-item'
          >
            { this.props.name }
          </a>
        </th>
        <td className="text-center">
          {this.props.beer_style}
        </td>
        <td className="text-center">
          { this.props.abv }%
        </td>
        <td className="text-center">
          { this.props.ibu }
        </td>
        <td className="text-center">
          {this.props.brewery_name}
        </td>
      </tr>
    )
  }
}
