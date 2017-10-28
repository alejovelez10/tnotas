# == Schema Information
#
# Table name: some_products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  user_id     :integer
#  state       :boolean
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SomeProduct < ApplicationRecord
	mount_uploader :image, SomeProductUploader
end
