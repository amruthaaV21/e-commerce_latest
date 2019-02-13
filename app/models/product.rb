class Product < ApplicationRecord
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :discounts
	has_many :product_images
	
end
