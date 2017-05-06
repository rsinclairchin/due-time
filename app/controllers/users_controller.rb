class UsersController < ApplicationController

#shows the signup form
  def new
    render "new"
  end

#creates a new user
  def create
    User.create(user_params)
  end

#find a match
  def match
    @user = User.find(params[:user_id])
    @user.find_match
    send_confirmation_email
  end

#linked to from confirmation email, creates event on google calendar
  def schedule
    POST "https://www.googleapis.com/calendar/v3/calendars/#{calendar_id}/events"
    render "schedule"
  end

private

  def send_confirmation_email
    UserMailer.confirmation_email(@user).deliver_now
  end

# retrieves user params from signup form
  def user_params
    params.permit(:name, :email, :availability, :hunter, :seeker)
  end

end
