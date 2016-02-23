var PostRideForm = React.createClass({

  render: function() {
    return (
      <form method="POST" action="/rides">
        <div>
          <label htmlFor="title">Your route: </label>
            <input type="text" name="title" />
        </div>
        <div>
          <label htmlFor="details">Details: </label>
            <input type="textarea" name="details" />
        </div>
        <div>
          <label htmlFor="seats">Number of seats available: </label>
            <input type="number" name="seats" min="1" max="6" />
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