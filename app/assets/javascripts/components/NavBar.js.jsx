//= require ./NewUser.js

var NavBar = React.createClass({

  render: function(){
    return (
      <div className="nav-bar">
        <NewUser />
        <LogInForm />

      </div>
    );
  }

});
