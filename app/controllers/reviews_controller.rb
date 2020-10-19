class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.cocktail = Cocktail.find(params[:cocktail_id])
    @review.save
    redirect_to cocktail_path(params[:cocktail_id])
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
