class UsersMailer < ApplicationMailer

  def confirmation(user)
    @user = user
    mail(
      to: user.email,
      from: 'tjenkins52689@gmail.com',
      subject: "Invitation to the Day Tracker App"
    )
  end
end
