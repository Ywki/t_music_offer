class UsersController < ApplicationController

  # def new
  #   @user = User.new
  #   render "/users/new" unless @user.valid?
  # end

  # def create
  #   @user = User.create(user_params)
  # end

  def show
    @user = User.find(params[:id])
  end

  def update
    current_user.update(user_params)
    redirect_to user_path
  end

private

  def user_params
    params.permit(:image, :nickname, :email, :introduce, :password)
  end

end