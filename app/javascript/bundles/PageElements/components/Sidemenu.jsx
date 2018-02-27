import React from 'react';
import SidemenuButton from './SidemenuButton.jsx'

export default class Sidemenu extends React.Component {
  render() {
    const buttonTexts = ['Find a Beer', 'Get a Random Beer']
    let buttonNodes = buttonTexts.map((text) => {
      let link = '';
      switch (text) {
        case 'Find a Beer':
          link = '/beers';
          break;
        case 'Get a Random Beer':
          link = '/beers/random';
          break;
      }
      return(
        <SidemenuButton
          buttonText={text}
          linkTo={link}
        />
      )
    })
    return (
      <aside className='wrapper'>
        <div id='sidebar'>
          <ul className='list-group list-unstyled components'>
            {buttonNodes}
          </ul>
        </div>
      </aside>
    )
  }
}
