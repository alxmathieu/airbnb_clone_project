class PhotosController < ApplicationController

  def create
    @photo = Photo.new(photo_params)
    @photo.user = current_user
    authorize @photo
    @photo.save
    redirect_to edit_user_path(current_user)
  end

  def destroy
    @photo = Photo.find(params[:id])
    authorize @photo
    @photo.destroy
    redirect_to edit_user_path(current_user)
  end

  private

  def photo_params
    params.require(:photo).permit(:artist_photo)
  end
end
