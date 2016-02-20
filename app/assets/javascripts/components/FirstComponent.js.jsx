var FirstComponent = React.createClass({

  getInitialState: function() {
    return {selectedUser: this.props.users[0]}
  },

  changeUser: function(user) {
    this.setState({
      selectedUser: user
    })
  },

  displayUsers: function(users) {
    that = this;
    return users.map(function(user){
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
