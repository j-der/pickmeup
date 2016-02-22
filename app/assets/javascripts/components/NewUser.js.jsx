var NewUser = React.createClass({

  getInitialState: function() {
    return {showForm: false}
  },

  displayForm: function() {
    if (this.state.showForm) {
      return (
        <form action="/index" method="POST">
          <div>
            <label htmlFor="first_name">First name:</label>
            <input type="text" id="first_name" placeholder="First name" />
          </div>
          <div>
            <label htmlFor="last_name">Last name:</label>
            <input type="text" id="last_name" placeholder="Last name" />
          </div>
          <div>
            <label htmlFor="email">Email:</label>
            <input type="text" id="email" placeholder="Email" />
          </div>
          <div>
            <label htmlFor="password">Choose a password:</label>
            <input type="password" id="password" placeholder="Password" />
          </div>
          <div>
            <label htmlFor="password-confirmation">Confirm your password:</label>
            <input type="password" id="password-confirmation" placeholder="Confirm your password" />
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
    that = this;
    return (
      <div>
        <button onClick={function() {that.toggleForm()}}>Sign up here!</button>
        {this.displayForm()}
      </div>
    );
  }


})
