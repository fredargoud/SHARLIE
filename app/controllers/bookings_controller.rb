class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @space = @booking.space
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.save

    redirect_to spaces_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to(root_path)
  end

  private

  def params_booking
    params.require(:booking).permit(:mate_id, :space_id)
  end

end
