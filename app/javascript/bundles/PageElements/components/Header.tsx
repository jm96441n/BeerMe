import React from 'react';

interface IHeaderProps {
  onClick: () => void;
}

export default class Header extends React.Component<IHeaderProps, {}> {
  constructor(props: IHeaderProps) {
    super(props);
  }

  public onClick = (event: any) => {
    event.preventDefault();
    this.props.onClick();
  }

  render() {
    return (
        <nav className="navbar navbar-expand-lg navbark-dark bg-primary">
          <a href="" onClick={this.onClick} className="header-link">
            <h3>
              BeerMe!
            </h3>
          </a>
        </nav>
    )
  }
}
