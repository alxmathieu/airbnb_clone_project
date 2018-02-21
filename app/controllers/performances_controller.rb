class PerformancesController < ApplicationController
  def show
    @performance = Performance.find(params[:id])
    @booking = Booking.new
  end

  def create
    @performance = Performance.new(performances_params)
    @performance.artist = current_user
    @performance.save
    redirect_to edit_user_path(current_user)
  end


  private

  def performances_params
    params.require(:performance).permit(:price, :description)
  end
end
