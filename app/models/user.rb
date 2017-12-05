class User < ApplicationRecord

  def self.new_confirmation_token
    token = SecureRandom.urlsafe_base64
    while exists?(confirmation_token: token)
      token = SecureRandom.urlsafe_base64
    end
    token
  end

  def send_confirmation
    update(confirmation_token: User.new_confirmation_token)
    UsersMailer.confirmation(self).deliver!
  end


  def confirm!
    update!(confirmation_date: Time.now)
  end

  def confirmed?
    confirmation_date.present?
  end

end
