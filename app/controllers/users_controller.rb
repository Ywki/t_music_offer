class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def update
    current_user.update(user_params)
    redirect_to user_path
  end

private

  def user_params
    params.require(:user).permit(:image, :nickname, :email, :introduce, :password)
  end

end