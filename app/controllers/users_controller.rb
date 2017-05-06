class UsersController < ApplicationController

#creates a new user
  def create
    User.create(user_params)
  end

#find a match
  def match
    @user = User.find(params[:user_id])
    send_confirmation_email(@user)
  end

#linked to from confirmation email, creates event on google calendar
  def schedule
    POST "https://www.googleapis.com/calendar/v3/calendars/#{calendar_id}/events"
    render "schedule"
  end

private

  def send_confirmation_email(user)
    UserMailer.confirmation_email(user).deliver_now
    UserMailer.confirmation_email(user.find_match).deliver_now
  end

# retrieves user params from signup form
  def user_params
    params.permit(:name, :email, :availability, :hunter, :seeker)
  end

end
