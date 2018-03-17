import React from 'react';

export default class Beer extends React.Component<IBeerProps, {}> {
  constructor(props: IBeerProps) {
    super(props);
    console.log(this.props.description);
    this.state = {};
  }

  getBody: any = () => {
    let html: any;
    if(this.props.description){
      html = (
        <div>
          <p>
            <strong>Name:</strong> {this.props.name}
          </p>
          <p>
            <strong>ABV%</strong>: {this.props.abv}%
          </p>
          <p>
            <strong>IBU:</strong> {this.props.ibu}
          </p>
          <p>
            <strong>Description:</strong> {this.props.description}
          </p>
        </div>
      )
    } else {
      html = (
        <div>
          <p>
            <strong>Name:</strong> {this.props.name}
          </p>
          <p>
            <strong>ABV%</strong>: {this.props.abv}%
          </p>
          <p>
            <strong>IBU:</strong> {this.props.ibu}
          </p>
        </div>
      )
    }
    return html
  }

  render() {
    let html: any = this.getBody()
    return (
      <div>
        { html }
      </div>
    )
  }
}
