import PropTypes from 'prop-types';
import React from 'react';

export default class SidemenuButton extends React.Component {
  static propTypes = {
    buttonText: PropTypes.string.isRequired,
    linkTo: PropTypes.string.isRequired
  }

  constructor(props) {
    super(props);
  }

  render() {
    return (
      <a href={this.props.linkTo}>
        <li className='list-group-item d-flex justify-content-between align-items-center'>
          {this.props.buttonText}
        </li>
      </a>
    )
  }
}
