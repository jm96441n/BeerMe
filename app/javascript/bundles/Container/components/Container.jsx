import PropTypes from 'prop-types';
import React from 'react';
import PageContent from '../../PageElements/components/PageContent.jsx'
import Header from '../../PageElements/components/Header.jsx'
import Sidemenu from '../../PageElements/components/Sidemenu.jsx'

export default class Container extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div>
        <Header />
        <Sidemenu />
        <div id='page_content'>
          <div className='container'>
            <PageContent />
          </div>
        </div>
      </div>
    )
  }
}
