import PropTypes from 'prop-types';
import React from 'react';
import HomepageButton from './HomepageButton.jsx';

export default class Homepage extends React.Component {
  static propTypes = {
    onButtonClick: PropTypes.func.isRequired,
  }
  constructor(props) {
    super(props);

    this.state = {
      buttons: ['Find by Category', 'Give me a Random Beer'],
    }
    this.onClick =  this.onClick.bind(this)
  }

  onClick(page){
    this.props.onButtonClick(page)
  }

  render() {
    let i = 0;
    let buttonNodes = this.state.buttons.map((button_text) => {
      i++;
      return (
        <div className='col-md-3 col-md-offset-3'>
          <HomepageButton
            button_text={ button_text }
            id={i}
            key={i}
            onClick={ this.onClick }
          />
        </div>
      )
    })
    return (
      <div className='row'>
        {buttonNodes}
      </div>
    )
  }
}
