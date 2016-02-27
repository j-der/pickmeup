var SearchBar = React.createClass({

  // getInitialState: function() {
  //   return { placeholder: "Where to?", formMethod: "", formAction: "" }
  // },

  // saveDestination: function(){
  //   var destination = document.getElementById('destination-field').value;
  //   this.setState({placeholder: "Where from?", formMethod: "POST", formAction: "/users"});
  // },

  render: function(){
    return (
      <form action="/rides" method="POST" onSubmit={this.saveDestination}>
        <div id="splash-input">
          <input id="destination-field" placeholder="Where to?" />
          <input id="destination-field" placeholder="Where from?" />
        </div>
      </form>
    );
  }

});

// set method to state
// on submit perform state function sets new method,
//   placeholder, saves value and changes it
// on submit saves second value and passes both