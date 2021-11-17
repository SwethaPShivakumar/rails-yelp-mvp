class ReviewsController < ApplicationController
   before_action :set_restaurant, only: [:new, :create]

   def new
       # display a form
    @review = Review.new
   end

   def create
    # review we need 2 things
    # content field
     @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render  "restaurants/show"

    end
   end

   def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to restaurant_path(review.restaurant)
   end

   private

   def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
   end

   def review_params
    params.require(:review).permit(:rating, :content)
   end
  end
