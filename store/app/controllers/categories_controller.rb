class CategoriesController < ApplicationController
  
  def index
	@categories = Category.all
  end

  def new
	@category = Category.new()
	@products = Product.all
  end

  def create
	new_cat = Category.create(category_params)
	selected = params[:checked]
	selected.each do |id|
		# REFACTOR THIS
		new_cat.products << Product.find(id.to_i)
	end
	binding.pry
	redirect_to category_path(new_cat)
  end

  def show
	@category = Category.find(params[:id])
  end

  def edit
  	@category = Category.find(params[:id])
	@products = Product.all
  end

  def update
	Category.destroy(category_params)
	updated_cat = Category.create(category_params)
	selected = params[:checked]
	selected.each do |id|
		updated_cat.products << Product.find(id.to_i)
	end
	redirect_to category_path(updated_cat)	
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
