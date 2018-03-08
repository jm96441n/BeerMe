import React from 'react';

export default class Homepage extends React.Component<{}, {}> {
  // static propTypes = {
  //   onButtonClick: PropTypes.func.isRequired,
  //   buttonsText: PropTypes.array.isRequired
  // }
  constructor(props: Object) {
    super(props);
    this.state = { }
  }

  render() {
    return (
      <div id='homepage-container' className='h-100'>
        <div className='row h-100 align-items-center justify-content-center'>
          <div className='col-md-12'>
            <div className='row'>
              <div className='col-md-8 offset-md-1'>
                <h3 className='text-center'>Welcome to Beer Me!</h3>
              </div>
            </div>
            <div className='row'>
              <div className='col-md-8 offset-md-1'>
                <p className='text-center'>
                  Having a hard time deciding what delicious nectar of the gods to consume? Always feeling indecisive about
                  how to get your buzz on? You're in the right place then!
                </p>
              </div>
            </div>
            <div className='row'>
              <div className='col-md-8 offset-md-1'>
                <p className='text-center'>
                  Here at BeerMe we aim to help you find not the beverage you want, but the beverage you need. Powered by
                  the
                  <a href=""> OpenBreweryDB </a>
                  we have a wide range of delicious beverages for you to explore.
                </p>
              </div>
            </div>
            <div className='row'>
              <div className='col-md-8 offset-md-1'>
                <p className='text-center'>
                  Get started by checking out our list of beers, or have us pick a beer for you to try! Soon we'll
                  be adding a spot for you to save your favorite beers, sign up for our mailing list to find out when that
                  is available!
                </p>
              </div>
            </div>
            <div className='row'>
              <div className='col-md-8 offset-md-1'>
                <h4 className='text-center'>
                  Cheers < i className="em em-beers" ></i > !
                </h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

