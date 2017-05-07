class UserMailer < ApplicationMailer
  default from: "r.sinclairchin@gmail.com"
  def confirmation_email(user)
    mail(to: user.email, subject: 'You have a match!')
  end
end
