var PostRideForm = React.createClass({

  render: function() {
    return (
      <form method="POST" action="/rides">
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

});
