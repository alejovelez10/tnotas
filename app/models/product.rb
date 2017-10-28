# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  image       :string
#  state       :boolean
#  price       :integer
#  show_index  :boolean
#  user_id     :integer
#  supplier_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  outstanding :boolean
#

class Product < ApplicationRecord
	has_and_belongs_to_many :sub_categories, dependent: :destroy
	mount_uploader :image, ProductImageUploader
end
