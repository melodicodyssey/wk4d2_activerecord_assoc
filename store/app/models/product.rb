class Product < ActiveRecord::Base
	has_many :associations
	has_many :categories, through: :associations

        def self.create_new product_params, checked
                new_prod = Category.create(product_params)
                checked.each do |id|
                        new_prod.categories << Category.find(id.to_i)
                end
                return new_prod
        end


        def self.update product_params, checked
                Product.destroy(product_params)
                updated_prod = Product.create(product_params)
                checked.each do |id|
                        updated_prod.categories << Category.find(id.to_i)
                end
                return updated_prod
        end


end
