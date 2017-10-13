class Catalog < ApplicationRecord
		mount_uploader :image, CatalogImageUploader
		mount_uploader :catalog_attachment, AttachmentCatalogUploader
end
