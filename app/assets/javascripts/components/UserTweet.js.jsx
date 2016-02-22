var UserTweet = React.createClass({

  userDetails: function(users){
    return users.map(function(user) {
      return (
        <div key={user.first_name} className="user-tweet">
          <img id="user-pic" src="/images/profile_pic.png" />
          <h4 id="user-first-name">{user.first_name}</h4>
          <p>Rating here</p>
          <h6>HERE ------> THERE</h6>
        </div>
      );
    });
  },

  render: function() {
    return (
      <div>
        {this.userDetails(this.props.users)}
      </div>
    );
  }

});