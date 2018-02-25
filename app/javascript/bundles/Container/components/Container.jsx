import PropTypes from 'prop-types';
import React from 'react';
import PageContent from '../../PageElements/components/PageContent.jsx'

export default class Container extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <div className='container'>
        <PageContent />
      </div>
    )
  }
}
