import PropTypes from 'prop-types';
import React from 'react';

export default class Header extends React.Component {
  static propTypes = {
    onClick: PropTypes.func.isRequired
  }

  constructor(props) {
    super(props);

    this.state = { }
  }

  onClick = (e) => {
    e.precentDefault();

    this.props.onClick()
  }

  render() {
    return (
        <nav className="navbar navbar-expand-lg navbark-dark bg-primary">
          <a href="" onClick={this.onClick} className="header-link">
            <h3>
              BeerMe!
            </h3>
          </a>
        </nav>
    )
  }
}
