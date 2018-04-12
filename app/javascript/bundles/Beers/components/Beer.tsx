import React from 'react';
const beerImage = 'https://s3.amazonaws.com/beer-me/beer-mug.png';

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
        <div className='row'>
          <div className='col-md-4'>
            <img className="img-thumbnail img-responsive" src={beerImage} />
          </div>
          <div className='col-md-8'>
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
        </div>
      )
    } else {
      html = (
        <div className='row'>
          <div className='col-md-4'>
            <img className="img-thumbnail img-responsive" src={beerImage} />
          </div>
          <div className='col-md-8'>
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
        </div>
      )
    }
    return html
  }

  render() {
    let html: any = this.getBody()
    return (
      <div id='beer'>
        { html }
      </div>
    )
  }
}
