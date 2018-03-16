import React from 'react';

export default class Beer extends React.Component<IBeerProps, {}> {
  constructor(props: IBeerProps) {
    super(props);
    console.log(this.props.description);
    this.state = {};
  }

  render() {
    return (
      <div>
        <p>Name: { this.props.name }</p>
        <p>ABV%: { this.props.abv }%</p>
        <p>IBU: { this.props.ibu }</p>
        <p>Description: { this.props.description }</p>
      </div>
    )
  }
}
