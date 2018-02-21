class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.customer = current_user
    if @booking.save
      redirect_to dashboard_path
    else
      render 'users/show'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:performance_id, :date, :location, :work_asked)
  end
end
