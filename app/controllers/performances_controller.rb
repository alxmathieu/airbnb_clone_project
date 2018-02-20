class PerformancesController < ApplicationController
  def show
    @performance = Performance.find(params[:id])
    @booking = Booking.new
  end
end
