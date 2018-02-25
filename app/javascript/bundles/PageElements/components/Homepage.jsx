import PropTypes from 'prop-types';
import React from 'react';
import HomepageButton from './HomepageButton.jsx';

export default class Homepage extends React.Component {
  constructor(props) {
    super(props);

    this.state = { buttons: ['Find by Category', 'Give me a Random Beer'] }
  }

  render() {
    let i = 0;
    let buttonNodes = this.state.buttons.map( (button_text) => {
      i += 1;
      return (
        <HomepageButton
          button_text={button_text}
          id={i}
        />
      )
    })
    return (
      <div>
        {buttonNodes}
      </div>
    )
  }
}