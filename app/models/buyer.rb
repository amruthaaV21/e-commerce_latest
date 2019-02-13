class Buyer < ApplicationRecord
	belongs_to :user
	has_and_belongs_to_many :sellers
	has_and_belongs_to_many :wishes
end
