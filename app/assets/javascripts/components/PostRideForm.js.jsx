var PostRideForm = React.createClass({

  render: function() {
    return (
      <form method="POST" action="/rides">
        <div>
          <label>Your route: </label>
            <input type="text" name="ride[title]" />
        </div>
        <div>
          <label>Details: </label>
            <input type="textarea" name="ride[details]" />
        </div>
        <div>
          <label>Number of seats available: </label>
            <input type="number" name="ride[seats]" min="1" max="6" />
        </div>
        <div>
        <input type="hidden" name="authenticity_token" value={this.props.authenticity_token} />
        </div>
        <div>
          <button type="submit">Let&#39;s roll</button>
        </div>
      </form>
    );
  }

});