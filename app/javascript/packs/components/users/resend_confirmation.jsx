import React from 'react'
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import {currentUser} from '../../models/user';



class ResendConfirmation extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      sending: false
    }
  }

  handleClick(e) {
    this.setState({sending: true});
    debugger;
    currentUser.resendConfirmation().then(function() {
      this.setState({sending: false, confirmation_sent: true});
    }.bind(this))
  }

  render() {
    if (this.state.confirmation_sent) {
      return (
        <div className="text-center" style={{width: '100%'}}>
          <div className="btn btn-success disabled">
            Confirmation has been sent!
          </div>
        </div>
      )
    }
    return (
      <div className="text-center" style={{width: '100%'}}>
        <button
          className="btn btn-success"
          style={{margin: 'auto', width: '200px', display: 'block'}} disabled={this.state.sending}
          onClick={this.handleClick.bind(this)}
        >
          { this.state.sending ? 'Sending...' : 'Resend Confirmation'}
        </button>
      </div>
    )
  }
}


export default ResendConfirmation