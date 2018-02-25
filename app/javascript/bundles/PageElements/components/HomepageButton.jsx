import PropTypes from 'prop-types';
import React from 'react';

export default class HomepageButton extends React.Component {
  static propTypes = {
    button_text: PropTypes.string.isRequired, // this is passed in from the Homepage component
    id: PropTypes.number.isRequired
  };

  constructor(props) {
    super(props);

    this.state = {
      button_text: this.props.button_text,
      id: this.props.id
    }
  }

  render () {
    return (
      <button
        type='button'
        className='btn btn-primary'
        id={this.state.id}
      >
        {this.state.button_text}
      </button>
    )
  }
}
