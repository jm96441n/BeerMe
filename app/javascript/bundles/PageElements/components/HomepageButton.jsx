import PropTypes from 'prop-types';
import React from 'react';

export default class HomepageButton extends React.Component {
  static propTypes = {
    button_text: PropTypes.string.isRequired, // this is passed in from the Container component
  };

  constructor(props) {
    super(props);

    this.state = { button_text: this.props.button_text }
  }

 render () {
   return (
     <button>
       {this.state.button_text}
     </button>
   )
 }
}
