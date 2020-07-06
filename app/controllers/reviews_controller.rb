class ReviewsController < ApplicationController


  def index
  end

  def show
    @reviews = Review.where(reviews_url = (params[:category_id]))
  end

  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to root_path
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    redirect_to "/users/#{current_user.id}"
  end

  private
  def review_params
    params.require(:review).permit(:name, :text, :category_id, :image, :rate).merge(user_id: current_user.id)
  end
end
