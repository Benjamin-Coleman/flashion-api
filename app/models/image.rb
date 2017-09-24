class Image < ApplicationRecord

	has_attached_file :image
	belongs_to :product
end
