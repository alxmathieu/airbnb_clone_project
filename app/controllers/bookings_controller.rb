class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.customer = current_user
    unless @booking.save
      render 'users/show'
    end
  end

  def update
    @booking = Booking.find(params[:booking][:id])
    if @booking.update(booking_params)
      redirect_to dashboard_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:performance_id, :date, :location, :work_asked, :status)
  end
end
