import BaseModel from './base_model';

const User = BaseModel.extend({
  urlRoot: "/api/users",

  resendConfirmation: function() {
    return $.ajax({
      url: this.url() + '/resend_confirmation',
      method: 'post'
    });
  }
});

export default User;


const currentUser = new User({id: 'current'});
currentUser.fetch();

export {currentUser};