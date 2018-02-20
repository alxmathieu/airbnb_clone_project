class UsersController < ApplicationController

  def dashboard
    @my_orders = current_user.bookings

    array_of_array_of_bookings = []
    @my_performances = current_user.performances
    @my_performances.each do |perf|
      array_of_array_of_bookings << perf.bookings
    end
    @my_bookings = array_of_array_of_bookings
  end

end
