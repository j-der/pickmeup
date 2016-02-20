//= require ./FirstComponent.js
//= require ./SecondComponent.js

var ParentComponent = React.createClass({
  render: function() {
    return (
      <div>
        <FirstComponent users={this.props.users}/>
        <SecondComponent />
      </div>
    );
  }
});
