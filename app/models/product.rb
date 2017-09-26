class Product < ApplicationRecord
	belongs_to :lookbook
	has_many :image
end
