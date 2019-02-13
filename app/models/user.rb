class User < ApplicationRecord
	has_and_belongs_to_many :roles
	has_many :admins
	has_many :sellers
	has_many :buyers
	has_many :user_images
	has_and_belongs_to_many :addresses
end
