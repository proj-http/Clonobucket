class PhotosController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @photo = Photo.new
  end

  def create
    @user = User.find(params[:user_id])
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Hey nice, you uploaded a photo, go you"
      redirect_to :back
    else
      flash[:notice] = "Oh uh you should like upload a picture or else whats the point tbh"
      redirect_to :back
    end
  end

private

  def photo_params
    params.require(:photo).permit(:user_id, :image)
  end

end
