class ReviewsController < ApplicationController


  def index
  end

  def show
  
    a = params[:category_id]
    case a
    when "1"
      @reviews = Review.where(category_id: 1)
    when "2"
      @reviews = Review.where(category_id: 2)
    when "3"
      @reviews = Review.where(category_id: 3)
    when "4"
      @reviews = Review.where(category_id: 4)
    when "5"
      @reviews = Review.where(category_id: 5)
    end
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
