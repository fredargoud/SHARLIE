
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



  def destroy
    @space = Space.find(params[:id])
    @space.destroy

    redirect_to profile_spaces_path
  end
end
