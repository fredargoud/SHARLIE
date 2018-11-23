class SpacesController < ApplicationController
  before_action :set_spaces, only: [:show]

  def index
    @spaces = Space.order(created_at: :desc)

    @spaces = Space.where.not(latitude: nil, longitude: nil)

    @markers = @spaces.map do |space|
      {
        lng: space.longitude,
        lat: space.latitude,
        infoWindow: { content: render_to_string(partial: "../views/spaces/popup", locals: { space: space }) }
      }
    end
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
      redirect_to profile_spaces_path
    else
      ap @space.errors
      render :new
    end
  end

  def edit
  end

  def update
    @space = Space.find(params[:id])
    @space.update(space_params)
    @space.save
    redirect_to profile_space_path
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy

    redirect_to profile_spaces_path
  end

  private

  def set_spaces
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:title, :description)
  end
end
