class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include Concerns::RequireRedirect

  def current_user
    User.first
  end

  def new_collection
    raise 'Method must be defined'
  end

  def collection
    @collection ||= new_collection
  end

  def collection=(other_collection)
    @collection = other_collection
  end

  def entity
    params[:id].present? ? collection.find(params[:id]) : collection.new
  end
end
