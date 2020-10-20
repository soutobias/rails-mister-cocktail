class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    if @review.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      @dose = Dose.new
      render "cocktails/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
