class Profile::BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end


  def show
    @booking = Booking.find(params[:id])
  end

end


# Quel controlleur utiliser pour destroy?
