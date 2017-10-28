# == Schema Information
#
# Table name: suppliers
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  image       :string
#  state       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Supplier < ApplicationRecord
	mount_uploader :image, SupplierImageUploader
end
