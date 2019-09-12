class ReviewsController < ApplicationController
  before_action :set_product
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  def index
    @reviews = @product.reviews.all
  end

  def show

  end

  def new
    @review = Review.new
  end

  def create
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_reviews_path(@product.id)
    else
      render :new
    end
  end
  def edit
  end

  def update
    @review = Review.find(params[:id])
      
      if @review.update(review_params)
        redirect_to product_reviews_path(@product.id)
      else
        render :edit
      end
    end

    def destroy
      @review.destroy
      redirect_to product_reviews_path(@product.id)
    end

  private
  def set_review
    @review = Review.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  def review_params
    params.require(:review).permit(:name, :subject, :message)
  end
end
