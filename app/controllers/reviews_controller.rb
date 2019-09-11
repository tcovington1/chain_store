class ReviewsController < ApplicationController
  def index
    @reviews = @product.reviews.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
