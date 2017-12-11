class Api::UsersController < ApplicationController

  allow_unconfirmed_users only: [:resend_confirmation, :show]

  def resend_confirmation
    entity.send_confirmation
  end

  def show
    render json: current_user, serializer: CurrentUserSerializer
  end

  def new_collection
    User.all
  end


end