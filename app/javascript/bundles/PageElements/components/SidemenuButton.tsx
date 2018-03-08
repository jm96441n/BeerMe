import React from 'react';

interface ISidemenuButtonProps {
  buttonText: string,
  linkTo: string,
  onClick: (page: string) => void
}

export default class SidemenuButton extends React.Component<ISidemenuButtonProps, {}> {
  constructor(props: ISidemenuButtonProps) {
    super(props);

    this.state = { };
  }

  onClick = (e: MouseEvent) => {
    e.preventDefault();
    this.props.onClick(this.props.linkTo)
  }

  render() {
    return (
      <a href='#' onClick={ e => this.onClick} className='sidemenu-link'>
        <li className='list-group-item d-flex justify-content-between align-items-center' style={{'backgroundColor': 'black'}}>
          {this.props.buttonText}
        </li>
      </a>
    )
  }
}
