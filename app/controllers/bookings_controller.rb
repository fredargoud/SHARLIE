class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @space = @booking.space
  end

  def create
    if user_signed_in?
      @booking = Booking.new(params_booking)
      @booking.save
      @space = @booking.space
      change_availability
      redirect_to spaces_path
    else
      redirect_to new_user_session_path
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy if @booking.mate == current_user

    redirect_to profile_bookings_path
  end

  private

  def params_booking
    params.require(:booking).permit(:mate_id, :space_id, :available)
  end

  def change_availability
    if @space.available?
      @space.update_attribute('available', false)
    else
      @space.update_attribute('available', true)
    end
  end
end
