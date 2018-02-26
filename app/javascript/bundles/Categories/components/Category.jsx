import PropTypes from 'prop-types';
import React from 'react';

export default class Category extends React.Component {
  static proptypes = {
    name: PropTypes.string.isRequired,
    id: PropTypes.number.isRequired,
  }

  constructor(props) {
    super(props);

    this.state = { }
  }

  render() {
    return (
      <div>
        <button
          type='button'
          className='btn btn-primary'
          id={this.props.id}
        >
          {this.props.name}
        </button>
      </div>
    )
  }
}
