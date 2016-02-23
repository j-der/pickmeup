var React = require('react');
var ReactDOM = require('react-dom');
var Modal = require('react-modal');

var appElement = document.getElementById('postRide');

/*
By default the modal is anchored to document.body. All of the following overrides are available.

* element
Modal.setAppElement(appElement);

* query selector - uses the first element found if you pass in a class.

*/
Modal.setAppElement('#postRide');


const customStyles = {
  content : {
    top                   : '50%',
    left                  : '50%',
    right                 : 'auto',
    bottom                : 'auto',
    marginRight           : '-50%',
    transform             : 'translate(-50%, -50%)'
  }
};

var PostRideForm = React.createClass({

  getInitialState: function() {
    return { modalIsOpen: false };
  },

  openModal: function() {
    this.setState({modalIsOpen: true});
  },

  closeModal: function() {
    this.setState({modalIsOpen: true});
  },

  // displayForm: function() {
  // if (this.state.showForm) {
  //     return (
  //         <form method="POST" action="/rides" className="modal-content">
  //           <div>
  //             <label htmlFor="title">Your route: </label>
  //               <input type="text" name="ride[title]" />
  //           </div>
  //           <div>
  //             <label htmlFor="details">Details: </label>
  //               <input type="textarea" name="ride[details]" />
  //           </div>
  //           <div>
  //             <label>Number of seats available: </label>
  //               <input type="number" min="1" max="6" name="ride[available_seats]"/>
  //           </div>
  //           <div>
  //           <input type="hidden" name="ride[authenticity_token]" value={ this.props.authenticity_token } />
  //           </div>
  //           <div>
  //             <button type="submit">Let&#39;s roll</button>
  //           </div>
  //         </form>
  //     );
  //   }
  // },

  render: function() {
    return (
      <div>
        <button onClick={this.openModal}>Post a Ride</button>
        <Modal
          isOpen={this.state.modalIsOpen}
          onRequestClose={this.closeModal}
          style={customStyles} >

          <h2>Hello</h2>
          <button onClick={this.closeModal}>x</button>
          <div>I am a modal</div>
          <form>
            <input />
            <button>tab navigation</button>
            <button>stays</button>
            <button>inside modal</button>
          </form>
        </Modal>
      </div>
        // {this.displayForm()}
      // </div>
    );
  }

});

ReactDOM.render(<PostRideForm/>, appElement);