class Supplier < ApplicationRecord
	mount_uploader :image, SupplierImageUploader
end
