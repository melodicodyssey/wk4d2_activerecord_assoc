class CategoriesController < ApplicationController
  
  def index
	@categories = Category.all
  end

  def new
	@category = Category.new()
	@products = Product.all
  end

  def create
	new_cat = Category.create_new(category_params, params[:checked])
	redirect_to category_path(new_cat.id)
  end

  def show
	@category = Category.find(params[:id])
  end

  def edit
  	@category = Category.find(params[:id])
	@products = Product.all
  end

  def update
	up_cat = Category.update(category_params, params[:checked])
	redirect_to category_path(up_cat.id)	
  end

  def destroy
  	id = params[:id]
  	Category.destroy(id)
  	redirect_to index_path
  end

  private

  def category_params
  	params.require(:category).permit(:name)
  end

end