# == Schema Information
#
# Table name: catalogs
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  image              :string
#  state              :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  catalog_url        :string
#  catalog_attachment :string
#

class Catalog < ApplicationRecord
		mount_uploader :image, CatalogImageUploader
		mount_uploader :catalog_attachment, AttachmentCatalogUploader
end
