//= require ./NewUser.js

var NavBar = React.createClass({

  render: function(){
    return (
      <div className="nav-bar">
      	<PostRideForm />
        <NewUser />
        <LogInForm />
      </div>
    );
  }

});
