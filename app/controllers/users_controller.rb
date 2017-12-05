class UsersController < ApplicationController

  allow_unconfirmed_users only: [:confirmation, :confirmation_required]

  def confirmation

  end

  def confirmation_required

  end


end