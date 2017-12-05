class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include Concerns::RequireRedirect

  def current_user
    User.first
  end
end
