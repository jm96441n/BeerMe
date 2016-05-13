var TopNav = React.createClass({
  handleNavClick: function(){
    this.props.resetContent()
  },
  render: function(){
    return(
      <div className="navbar-header col-md-12">
          <a className="navbar-brand" onClick={this.handleNavClick}>BeerMe!</a>
      </div>
    )
  }
})
