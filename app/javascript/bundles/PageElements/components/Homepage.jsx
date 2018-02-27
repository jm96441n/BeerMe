import PropTypes from 'prop-types';
import React from 'react';

export default class Homepage extends React.Component {
  // static propTypes = {
  //   onButtonClick: PropTypes.func.isRequired,
  //   buttonsText: PropTypes.array.isRequired
  // }
  constructor(props) {
    super(props);
    this.state = { }
  }

  // onClick = (page) => {
  //   this.props.onButtonClick(page);
  // }

  // getButtonDirector = (text) => {
  //   let director = ''
  //   switch (text) {
  //     case 'Give me a Random Beer':
  //       director = 'Random'
  //       break;
  //     case 'Find by Category':
  //       director = 'Categories'
  //       break;
  //   }
  //   return(director)
  // }

  render() {
    return (
      <div id='homepage-container'>
        <div className='row'>
          <div className='col-md-4 offset-md-4'>
            <h3 className='text-center'>Welcome to Beer Me!</h3>
          </div>
        </div>
        <div className='row'>
          <div className='col-md-8 offset-md-2's>
            <p className='text-center'>
              Having a hard time deciding what delicious nectar of the gods to consume? Always feeling indecisive about
              how to get your buzz on? You're in the right place then!
            </p>
          </div>
        </div>
      </div>
    )
  }
}
