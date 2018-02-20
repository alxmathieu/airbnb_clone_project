class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    #@booking = Booking.new
  end
end
