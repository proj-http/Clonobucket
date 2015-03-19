class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # binding.pry
    if @user.save
      flash[:notice] = "Congrats, you account was created! Please log in."
      redirect_to "/log-in"
    else
      flash[:alert] = "There was a problem creating your account, please try again."
      redirect_to :back
    end
  end

  def show
    @user = User.find(params[:id])
    @photos = Photo.where("user_id = ?", @user.id)
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You've updated your profile."
      redirect_to user_path(@user)
    else
      flash[:alert] = "There was a problem updating your info."
      redirect_to :back
    end
  end

private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :avatar, :bio, :camera_type, :sea_creature)
  end

end
