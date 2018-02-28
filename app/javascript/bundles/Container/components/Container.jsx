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
        <div className='container page_container'>
          <div id='page_content' className='h-100'>
            <PageContent />
          </div>
        </div>
      </div>
    )
  }
}
