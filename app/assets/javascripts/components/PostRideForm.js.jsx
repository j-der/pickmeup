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
          <label htmlFor="seats">Number of seats available: </label>
            <input type="number" name="ride[seats]" min="1" max="6" />
        </div>
        <div>
        <input type='hidden' name='authenticity_token' value={this.props.authenticity_token} />
        </div>
        <div>
          <button type="submit">Lets roll</button>
        </div>
      </form>
    );
  }

});