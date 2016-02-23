var PostRideForm = React.createClass({

  getInitialState: function() {
    return {showForm: false}
  },

  displayForm: function() {
  if (this.state.showForm) {
      return (
          <form method="POST" action="/rides" className="modal-content">
            <div>
              <label htmlFor="title">Your route: </label>
                <input type="text" name="ride[title]" />
            </div>
            <div>
              <label htmlFor="details">Details: </label>
                <input type="textarea" name="ride[details]" />
            </div>
            <div>
              <label>Number of seats available: </label>
                <input type="number" min="1" max="6" name="ride[available_seats]"/>
            </div>
            <div>
            <input type="hidden" name="ride[authenticity_token]" value={ this.props.authenticity_token } />
            </div>
            <div>
              <button type="submit">Let&#39;s roll</button>
            </div>
          </form>

      );
    }
  },

  openModal: function() {
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

  render: function() {
    thisOne = this;
    return (
      <div>
        <button id="myBtn" onClick={function() {thisOne.openModal()}}>Post a Ride</button>
        {this.displayForm()}
      </div>
    );
  }

})