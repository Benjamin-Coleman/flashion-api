class Lookbook < ApplicationRecord
	has_many :products
	belongs_to :template
	belongs_to :user
end
