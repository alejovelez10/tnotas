class Product < ApplicationRecord
	has_and_belongs_to_many :sub_categories, dependent: :destroy
	mount_uploader :image, ProductImageUploader
end
