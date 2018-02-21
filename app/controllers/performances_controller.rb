class PerformancesController < ApplicationController
  def show
    @performance = Performance.find(params[:id])
    @booking = Booking.new
  end

  def create
    @performance = Performance.new(performances_params)
    @performance.artist = current_user
    @performance.save
    current_user.is_artist = true
    current_user.save
    redirect_to edit_user_path(current_user)
  end

  private

  def performances_params
    params.require(:performance).permit(:price, :description)
  end
end
