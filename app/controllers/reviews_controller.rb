class ReviewsController < ApplicationController

  def create
    @space = Space.find(params[:space_id])
    @review = Review.new(review_params)
    @review.space = @space
    if @review.save
      respond_to do |format|
        format.html { redirect_to space_path(@space) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render 'space/show' }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
