class Category < ActiveRecord::Base
	has_many :associations
	has_many :products, through: :associations

	validates :name, presence: true
end
