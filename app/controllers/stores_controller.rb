class StoresController < ApplicationController
  before_action :set_store, only: [:show, :update, :edit, :destroy]
  # before_action :set_product, only: [:show]
  def index
    @stores = Store.all
  end

  def show

  end

  def new
    @store = Store.new
  end

def create
  @store = Store.new(store_params)

  if @store.save
    redirect_to stores_path
  else
    render :new
  end
end

  def edit
  end

  def update
    if @store.update(store_params)
      redirect_to stores_path
    else
      render :edit
    end
  end

  def destroy
    @store.destroy
    redirect_to stores_path
  end

  private
    def set_store
      @store = Store.find(params[:id])
    end

    def store_params
      params.require(:store).permit(:store_name)
    end

end
