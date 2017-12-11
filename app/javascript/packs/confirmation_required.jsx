import React from 'react';
import ReactDOM from 'react-dom';
import PropTypes from 'prop-types';
import $ from 'jquery'
import {} from 'jquery-ujs'
import ResendConfirmation from './components/users/resend_confirmation';

const ConfirmationRequired = props => (
  <div>
    <h2 className="text-center">
      Confirmation Required.
    </h2>
    <div className="text-center">
      Please check your email for the link to confirm your account. <br/>
      Or click the button below to resend the link
    </div>
    <div>
      <ResendConfirmation />
    </div>

  </div>
)

ConfirmationRequired.defaultProps = {
  user: {
    first_name: "Thomas",
    last_name: "Jenkins",
    email: "tjenkins52689@gmail.com"
  }
}

ConfirmationRequired.propTypes = {
  user: PropTypes.object
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <ConfirmationRequired name="React" />,
    document.body.appendChild(document.createElement('div')),
  )
})

export default ResendConfirmation