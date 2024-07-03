class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)

    if @review.save
      redirect_to restaurant_path(@restaurant), notice: 'Review was successfully created.'
    else
      render 'restaurants/show' # Rendu la vue 'show' du restaurant parent en cas d'erreur
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
