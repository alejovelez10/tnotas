class Catalog < ApplicationRecord
		mount_uploader :image, CatalogImageUploader
end
