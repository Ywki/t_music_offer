class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  def show
  end

  def update
    current_user.update(user_params)
    redirect_to user_path
  end

end

private

def user_params
  params.permit(:email)
end
