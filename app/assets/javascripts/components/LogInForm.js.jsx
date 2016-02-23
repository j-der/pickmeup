var LogInForm = React.createClass({

  getInitialState: function() {
    return {showForm: false}
  },

  displayLogInForm: function() {
    if (this.state.showForm) {
      return (
        <form action="/users" method="POST">
          <div>
            <label htmlFor="email">Email:</label>
            <input type="text" name="user[email]" placeholder="Email" />
          </div>
          <div>
            <label htmlFor="password">Password:</label>
            <input type="text" name="user[password]" placeholder="Password" />
          </div>
          <div>
            <button type="submit">Let's Roll</button>
          </div>
        </form>
      )
    }
  },

  toggleLogInForm: function() {
    if (this.state.showForm) {
      this.setState({
        showForm: false
      })
    }
    else {
      this.setState({
        showForm: true
      })
    }
  },

  render: function(){
    return (
      <div>
        <button className="log-in-button" onClick={this.toggleLogInForm}>Log in</button>
        {this.displayLogInForm()}
      </div>
    );
  }

});
