class UsersController < ApplicationController

#shows the signup form
  def new
    render "new"
  end

#creates a new user
  def create
    User.create(user_params)
  end

private

# retrieves user params from signup form
  def user_params
    params.permit(:name)
  end

end
