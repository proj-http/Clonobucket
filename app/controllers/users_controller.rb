class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You made it!"
      redirect_to "/"
    else
      flash[:alert] = "There was a problem creating your account, please try again."
      redirect_to :back
    end
  end

private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
