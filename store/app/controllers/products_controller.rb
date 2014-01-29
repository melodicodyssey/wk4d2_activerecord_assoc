class ProductsController < ApplicationController
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new()
    @categories = Category.all
  end

  def create
    new_prod = Product.create(product_params)
    selected = params[:checked]
    selected.each do |id|
      # REFACTOR THIS?
      new_prod.categories << Category.find(id.to_i)
    end
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
    id = params[:id]
    param = product_params    
    Product.destroy(id)
    updated_prod = Product.create(param)
    selected = params[:checked]
    selected.each do |id|
      updated_prod.categories << Category.find(id.to_i)
    end
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
