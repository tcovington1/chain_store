class ProductsController < ApplicationController
  before_action :set_store
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = @store.products
  end

  def show
    
  end

  def new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to store_path(@store)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to store_path(store.id)
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to store_path(@store)
  end

  private
  def set_store
    @store = Store.find(params[:store_id])
  end
  def set_product
    @product = Product.find(params[:id])
  end
  def product_params
    params.require(:product).permit(:product_name, :product_price)
  end

end
