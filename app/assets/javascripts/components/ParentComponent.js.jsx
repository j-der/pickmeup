//= require ./FirstComponent.js
//= require ./SecondComponent.js
//= require ./NewUser.js

var ParentComponent = React.createClass({
  render: function() {
    return (
      <div>
      {/* after requiring files on top, syntax below is how we include other components
      this.props.users is being passed from the render of 'ParentComponent' in the UsersController
      use 'this.props.users' because 'this' refers to 'ParentComponent' */}
        <FirstComponent users={this.props.users}/>
        {/* when using JS in JSX (above), must be contained in {} */}
        <SecondComponent />
        <NewUser view={this.props.view} />
      </div>
    );
  }
});
