var SearchBar = React.createClass({

  getInitialState: function() {
    return { placeholder: "Where to?" }
  },

  changePlaceholder: function(){
    this.setState({ placeholder: "Where from?"});
  },

  render: function(){
    return (
      <div id="splash-input">
        <input id="origin-field" placeholder={this.state.placeholder} onClick={this.changePlaceholder}/>
      </div>
    );
  }

});