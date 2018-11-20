class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[:booking])
    @booking.save
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end
end
