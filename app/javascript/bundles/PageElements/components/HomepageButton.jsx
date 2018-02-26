import PropTypes from 'prop-types';
import React from 'react';

export default class HomepageButton extends React.Component {
  static propTypes = {
    button_text: PropTypes.string.isRequired, // this is passed in from the Homepage component
    id: PropTypes.number.isRequired,
    director: PropTypes.string.isRequired,
    onClick: PropTypes.func.isRequired
  };

  constructor(props) {
    super(props);

    this.state = { };
  }

  handleClick = () => {
    this.props.onClick(this.props.director);
  }

  inputNode() {
    return (
      <button
        type='button'
        className='btn btn-primary'
        onClick={this.handleClick}
      >
        {this.props.button_text}
      </button>
    )
  }

  render() {
    return(
      this.inputNode()
    )
  }
}
