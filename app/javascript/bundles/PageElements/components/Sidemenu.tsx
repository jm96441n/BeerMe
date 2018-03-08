import React from 'react';
import SidemenuButton from './SidemenuButton'

interface ISidemenuProps {
  onClick: (page: string) => void
}

export default class Sidemenu extends React.Component<ISidemenuProps, {}> {

  constructor(props: ISidemenuProps) {
    super(props);

    this.state = { }
  }

  onClick = (page: string) => {
    this.props.onClick(page)
  }

  render() {
    const buttonTexts = ['Find a Beer', 'Get a Random Beer']
    let buttonNodes = buttonTexts.map((text: string) => {
      let link = '';
      switch (text) {
        case 'Find a Beer':
          link = 'beers';
          break;
        case 'Get a Random Beer':
          link = 'random';
          break;
      }
      return(
        <SidemenuButton
          buttonText={text}
          linkTo={link}
          onClick={this.onClick}
          key={link}
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
