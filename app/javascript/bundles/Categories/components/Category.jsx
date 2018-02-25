import PropTypes from 'prop-types';
import React from 'react';

export default class Category extends React.Component {
  static proptypes = {
    name: PropTypes.string.isRequired,
    id: PropTypes.number.isRequired
  }

  constructor(props) {
    super(props);

    this.state = {
      name: this.props.name,
      id: this.props.id
    }
  }

  render() {
    return (
      <div>
        <button
          type='button'
          className='btn btn-primary'
          id={this.state.id}
        >
          {this.state.name}
        </button>
      </div>
    )
  }
}
