class UserMailer < ApplicationMailer
  def confirmation_email(user)
    @user = user
    mail(to: @user.email, subject: 'You have a match!')
  end
end
