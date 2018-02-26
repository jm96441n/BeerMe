import PropTypes from 'prop-types';
import React from 'react';
import Category from './Category.jsx';

export default class CategoryList extends React.Component {
  static proptypes = {
    categories: PropTypes.array.isRequired
  }
  constructor(props) {
    super(props);

    this.state = { categories: this.props.categories }
  }

  render () {
    let categoryNodes = this.state.categories.map((category) => {
      return (
        <Category
          name={category['name']}
          id={category['id']}
          key={category['id']}
        />
      )
    })
  }
}
