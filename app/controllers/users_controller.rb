class UsersController < ApplicationController

  def dashboard
    @my_orders = current_user.bookings
    @my_bookings = Booking.joins(:performance).where(performances: { user_id: current_user.id })
  end

end
