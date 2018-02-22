class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
  end

  def edit
    @user = User.find(params[:id])
    @performance = Performance.new
    @photo = Photo.new
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to edit_user_path
  end

  def dashboard
    @my_orders = current_user.bookings.order(status: :DESC)
    @my_bookings = Booking.joins(:performance).where(performances: { user_id: current_user.id }).order(status: :DESC)
  end

  private

  def user_params
    params.require(:user).permit(:bio, {photos: []})
  end
end
