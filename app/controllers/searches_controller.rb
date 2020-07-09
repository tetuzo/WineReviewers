class SearchesController < ApplicationController

  def index
    @reviews = Review.search(params[:search]).limit(132)
    @search = params[:search]
  end

end
