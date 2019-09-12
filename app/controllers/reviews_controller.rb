class ReviewsController < ApplicationController
  before_action :set_product
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  def index
    @reviews = @product.reviews.all
  end

  def show

  end

  def new
  end

  def edit
  end

  private
  def set_review
    @review = Review.find(params[:id])
  end
  def set_product
    @product = Product.find(params[:product_id])
  end
end
