import React from 'react';
import SidemenuButton from './SidemenuButton.jsx'

export default class Sidemenu extends React.Component {
  render() {
    const buttonTexts = ['Find a Beer', 'Get a Random Beer']
    let buttonNodes = buttonTexts.map((text) => {
      return(
        <SidemenuButton buttonText={text} />
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
