
class Profile::SpacesController < ApplicationController
  def index
    @spaces = current_user.spaces
    if @spaces.empty?
      redirect_to new_space_path
    end
  end

  def show
    @space = Space.find(params[:id])
  end

  def edit
    @space = Space.find(params[:id])
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy

    redirect_to profile_spaces_path
  end

  private

  def space_params
    params.require(:space).permit(:title, :description)
  end
end
