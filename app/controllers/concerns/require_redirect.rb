module Concerns
  module RequireRedirect
    extend ActiveSupport::Concern

    included do
      before_action :redirect_unless_confirmed
    end

    class_methods do
      def allow_unconfirmed_users(options)
        skip_before_action :redirect_unless
      end
    end


    def redirect_unless_confirmed
      redirect_to confirmation_required_url unless current_user.confirmed?
    end

  end
end