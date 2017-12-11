class UsersController < ApplicationController

  allow_unconfirmed_users only: [:confirmation, :confirmation_required]

  def confirmation
    current_user.confirm!
  end

  def confirmation_required

  end


end