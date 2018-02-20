class BookingsController < ApplicationController
  def create
    @performance = Performance.find(params[:performance_id])
    @booking = Booking.new(booking_params)
    @booking.performance = @performance
    @booking.customer = current_user
    if @booking.save
      redirect_to root_path
    else
      render 'performances/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :location, :work_asked)
  end
end
