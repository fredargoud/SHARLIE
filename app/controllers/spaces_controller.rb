class SpacesController < ApplicationController
  before_action :set_spaces, only: [:show]

  def index
    @spaces = Space.order(created_at: :desc)
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
    @space.owner = current_user
    if @space.save
      redirect_to spaces_path
    else
      ap @space.errors
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_spaces
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:title, :description)
  end
end
