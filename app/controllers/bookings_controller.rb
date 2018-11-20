class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @space = @booking.space
  end

  def create
    @booking = Booking.new(params[:booking])
    @booking.save
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to(root_path)
  end
end
