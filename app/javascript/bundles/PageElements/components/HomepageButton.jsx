import PropTypes from 'prop-types';
import React from 'react';

export default class HomepageButton extends React.Component {
  static propTypes = {
    button_text: PropTypes.string.isRequired, // this is passed in from the Homepage component
    id: PropTypes.number.isRequired,
    onClick: PropTypes.func.isRequired
  };

  constructor(props) {
    super(props);

    this.state = {
      button_text: this.props.button_text,
      id: this.props.id
    }
    this.onClick = this.onClick.bind(this)
  }

  onClick(text) {
    switch(text) {
      case 'Find by Category':
        this.props.onClick('Categories')
        break;
      case 'Give me a Random Beer':
        this.props.onClick('Random')
        break;
    }
  }

  render () {
    return (
      <button
        type='button'
        className='btn btn-primary'
        id={this.state.id}
        onClick={ this.onClick(this.state.button_text) }
      >
        {this.state.button_text}
      </button>
    )
  }
}
