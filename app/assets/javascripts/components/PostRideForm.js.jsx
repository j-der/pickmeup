var PostRideForm = React.createClass({
  render: function() {
    return (
      <form method="POST" action="/rides" role="form">
        <div>
          <label>Your route: </label>
            <input type="text" name="title" />
        </div>
        <div>
          <label>Details: </label>
            <input type="textarea" name="details" />
        </div>
        <div>
          <label>Number of seats available: </label>
            <input type="number" name="seats" min="1" max="6" />
        </div>
        <div>
          <label></label>
            <input type="submit" name="submit" value="let's go!" />
        </div>
      </form>
    );
  }
});

// <form method="POST" action="/posts" role="form" id="new_post_form">
//       <div class="form-group">
//         <label class="col-xs-3 control-label form-width">Type of offer</label>
//         <select class="new-post-form" name="category">
//           <option name="goods" value="goods">Goods</option>
//           <option name="services" value="skills">Skills</option>
//         </select>
//       </div>

//       <div class="form-group">
//         <label class="col-xs-3 control-label">Title: </label>
//         <input class="new-post-form" type="text" name="title" placeholder="Tagline for your offer">
//       </div>

//       <div class="form-group">
//         <label class="col-xs-3 control-label">Description: </label>
//         <input class="new-post-form" id="new-post-form-desc" type="text" name="description" placeholder="Details of your offer">
//       </div>

//       <div class="form-group">
//         <label class="col-xs-3 control-label">Add an image! </label>
//         <input class="new-post-form" type="text" name="image_url" placeholder="URL to the image">
//       </div>

//       <div class="form-group">
//         <input type="hidden" name="latitude" id="lat">
//       </div>

//       <div class="form-group">
//         <input type="hidden" name="longitude" id="lng">
//       </div>

//       <div class="form-group">
//         <label class="col-xs-3 control-label"></label>
//         <input type="submit" name"submit" value="Haggle it!">
//       </div>
//     </form>