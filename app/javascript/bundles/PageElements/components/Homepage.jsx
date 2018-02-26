import PropTypes from 'prop-types';
import React from 'react';
import HomepageButton from './HomepageButton.jsx';

export default class Homepage extends React.Component {
  static propTypes = {
    onButtonClick: PropTypes.func.isRequired,
    buttonsText: PropTypes.array.isRequired
  }
  constructor(props) {
    super(props);
    this.state = { }
  }

  onClick = (page) => {
    this.props.onButtonClick(page);
  }

  getButtonDirector = (text) => {
    let director = ''
    switch (text) {
      case 'Give me a Random Beer':
        director = 'Random'
        break;
      case 'Find by Category':
        director = 'Categories'
        break;
    }
    return(director)
  }

  render() {
    const buttons = this.props.buttonsText.map((button_text, index) => {
      let director = this.getButtonDirector(button_text)
      return (
        <div
          className='col-md-3 col-md-offset-3'
          key={10 + index}
        >
          <HomepageButton
            button_text={button_text}
            id={index}
            director={director}
            onClick={this.onClick}
          />
        </div>
      )
    })

    return (
      <div className='row'>
        {buttons}
      </div>
    )
  }
}
