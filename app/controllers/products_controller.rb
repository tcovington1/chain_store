class ProductsController < ApplicationController
  before_action :set_store
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = @store.products.all
  end

  def show
    
  end

  def new
  end

  def edit
  end

  private
  def set_store
    @store = Store.find(params[:id])
  end
  def set_product
    @product = @store.product.find(params[:id])
  end

end
