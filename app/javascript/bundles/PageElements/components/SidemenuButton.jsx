import PropTypes from 'prop-types';
import React from 'react';

export default class SidemenuButton extends React.Component {
  static propTypes = {
    buttonText: PropTypes.string.isRequired,
    linkTo: PropTypes.string.isRequired,
    onClick: PropTypes.func.isRequired
  }

  constructor(props) {
    super(props);

    this.state = { };
  }

  onClick = (e) => {
    e.preventDefault();
    this.props.onClick(this.props.linkTo)
  }

  render() {
    return (
      <a href='#' onClick={this.onClick} className='sidemenu-link'>
        <li className='list-group-item d-flex justify-content-between align-items-center' style={{'background-color': 'black'}}>
          {this.props.buttonText}
        </li>
      </a>
    )
  }
}
