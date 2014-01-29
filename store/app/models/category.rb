class Category < ActiveRecord::Base
	has_many :associations
	has_many :products, through: :associations

	validates :name, presence: true


	def self.create_new category_params, checked
		new_cat = Category.create(category_params)
		checked.each do |id|
			new_cat.products << Product.find(id.to_i)
		end
		return new_cat
	end

	def self.update category_params, checked
		Category.destroy(category_params)
		updated_cat = Category.create(category_params)
		checked.each do |id|
			updated_cat.products << Product.find(id.to_i)
		end
		return updated_cat
	end

end
