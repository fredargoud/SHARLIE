class SpacesController < ApplicationController
  before_action :set_spaces, only: [:show]

  def index
    @spaces = Space.all
  end

  def show
    @owner = @space.owner
    @user  = current_user
    @booking = Booking.new(mate: current_user, space: @space)
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.save!
  end

  def edit
  end

  def update
  end

  def detroy
  end

  private

  def set_spaces
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:owner_id)
  end
end
