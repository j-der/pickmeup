var NewUser = React.createClass({

  getInitialState: function() {
    return {showForm: false}
  },

  displayForm: function() {
    if (this.state.showForm) {
      return (
        <form action="/users" method="POST">
          <div>
            <label htmlFor="first_name">First name:</label>
            <input type="text" name="user[first_name]" id="first_name" placeholder="First name" />
          </div>
          <div>
            <label htmlFor="last_name">Last name:</label>
            <input type="text" name="user[last_name]" id="last_name" placeholder="Last name" />
          </div>
          <div>
            <label htmlFor="email">Email:</label>
            <input type="text" name="user[email]" id="email" placeholder="Email" />
          </div>
          <div>
            <label htmlFor="password">Choose a password:</label>
            <input type="password" name="user[password]" id="password" placeholder="Password" />
          </div>
          <div>
            <label htmlFor="password_confirmation">Confirm your password:</label>
            <input type="password" name="user[password_confirmation]" id="password_confirmation" placeholder="Confirm your password" />
          </div>
          <div>
        <input type="hidden" name="authenticity_token" value={this.props.authenticity_token} />
        </div>
          <div>
            <button type="submit">Submit</button>
          </div>
        </form>
      )
    }
  },

  toggleForm: function() {
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
        <button className="sign-up-button" onClick={this.toggleForm}>Sign up!</button>
        {this.displayForm()}
      </div>
    );
  }


})
