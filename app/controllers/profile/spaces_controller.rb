
class Profile::SpacesController < ApplicationController
  def index
    @spaces = current_user.spaces
  end
end
