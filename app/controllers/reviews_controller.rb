class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    Review.create(review_params)
    redirect_to root_path, notice: 'レビューを投稿しました'
  end

  private
  def review_params
    params.require(:review).permit(:name, :text, :category, :image).merge(user_id: current_user.id)
  end
end
