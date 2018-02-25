import PropTypes from 'prop-types';
import React from 'react';
import Homepage from '../../PageElements/components/Homepage.jsx'

export default class Container extends React.Component {
  constructor(props) {
    super(props);

    this.state = { page: "Home" };
  }

  updatePage = (page) => {
    this.setState({ page })
  }

  // renderContent = (pageName) => {
  //   switch(pageName) {
  //     case "Home":
  //       homePage()
  //   }
  // }

  // homePage = () => {

  // }

  render() {
    return (
      <div className='container'>
        <Homepage />
      </div>
    )
  }
}
