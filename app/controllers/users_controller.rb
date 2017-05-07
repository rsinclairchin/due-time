class UsersController < ApplicationController
skip_before_filter :verify_authenticity_token

#creates a new user
  def create
    @user = User.create(user_params)
    @user.availability = Availability.create(availability_params)
    send_confirmation_email
  end

#linked to from confirmation email, creates event on google calendar
  def schedule
    POST "https://www.googleapis.com/calendar/v3/calendars/#{calendar_id}/events"
    render "schedule"
  end

private

# find a match and send confirmation email
  def send_confirmation_email
    UserMailer.confirmation_email(@user).deliver_now
    UserMailer.confirmation_email(@user.find_match).deliver_now
  end

# retrieves user params from signup form
  def user_params
    params.permit(:name, :email, :hunter, :seeker)
  end

  # retrieves availability params from signup form
  def availability_params
    params.permit(:tues_am, :mon_am, :wed_am, :thurs_am, :fri_am,:mom_pm, :tues_pm, :wed_pm, :thurs_pm, :fri_pm)
  end

end
