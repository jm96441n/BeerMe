import PropTypes from 'prop-types';
import React from 'react';
import Category from './Category.jsx';

export default class CategoryList extends React.Component {
  static proptypes = {
    categories: PropTypes.array.isRequired
  }
  constructor(props) {
    super(props);

    this.state = { }
  }

  render () {
    let categoryNodes = this.props.categories.map((category) => {
      return (
        <Category
          name={category['attributes']['name']}
          id={category['attributes']['id']}
          key={category['attributes']['id']}
        />
      )
    })

    return (
      <div>
        {categoryNodes}
      </div>
    )
  }
}
