var FirstComponent = React.createClass({

  getInitialState: function() {
    // sets initial 'selectedUser' state of component
    // 
    return {selectedUser: this.props.users[0]}
  },

  changeUser: function(user) {
    // setState is a built-in function that changes an attr of state
    this.setState({
      selectedUser: user
    })
  },
  // this function will display all users
  // the 'users' argument will be passed from the parent component in UsersController
  displayUsers: function(users) {
    // here, this refers to the component
    that = this;
    // 
    return users.map(function(user){
      // give the div a key so each component has a unique identifiying key for react
      // and then upon click call a function that calls the changeUser function
      return (<div key={user.first_name} onClick={function(){that.changeUser(user)}}>{user.first_name}</div>)
    });
  },

  render: function() {
    return (
      <div>
        <div className="users">
          {this.displayUsers(this.props.users)}
        </div>
        <div className="selected-user">
          {this.state.selectedUser.first_name}
        </div>
      </div>
    );
  }

});
