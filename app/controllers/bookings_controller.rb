class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.customer = current_user
    @user = User.find(Performance.find(params[:booking][:performance_id]).user_id)
    unless @booking.save
      render 'users/show'
    end
  end

  def update
    @booking = Booking.find(params[:booking][:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to dashboard_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:performance_id, :date, :location, :work_asked, :status)
  end
end
