//= require ./SearchBar.js
//= require ./NavBar.js

var SplashPage = React.createClass({

  render: function(){
    return (
      <div>
        <NavBar />
        <SearchBar />
      </div>
    );
  }

});