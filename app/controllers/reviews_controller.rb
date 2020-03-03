class ReviewsController < ApplicationController


  def index
  end

  def show
  a = 1
  case a
  when 1 then
    @reviews = Review.where(category: '赤')
  when 2 then
    @reviews = Review.where(category: '白')
  when 3 then
    @reviews = Review.where(category: 'ロゼ')
  when 4 then
    @reviews = Review.where(category: 'スパークリング')
  when 5 then
    @reviews = Review.where(category: 'デザート')
    
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
    params.require(:review).permit(:name, :text, :category, :image, :rate).merge(user_id: current_user.id)
  end
end
