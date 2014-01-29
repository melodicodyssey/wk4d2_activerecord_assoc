class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new()
    @categories = Category.all
  end

  def create
    Product.create_new(product_params, params[:checked])
    redirect_to product_path(new_prod)
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def update
    Product.update(product_params, params[:checked])
    redirect_to product_path(updated_prod)  
  end

  def destroy
    id = params[:id]
    Category.destroy(id)
    redirect_to index_path
  end

  private

  def product_params
	params.require(:product).permit(:name, :price)
  end

end
