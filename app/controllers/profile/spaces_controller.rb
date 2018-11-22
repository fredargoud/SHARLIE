
class Profile::SpacesController < ApplicationController
  def index
    @spaces = current_user.spaces
    if @spaces.empty?
      redirect_to new_space_path
    end
  end
end
