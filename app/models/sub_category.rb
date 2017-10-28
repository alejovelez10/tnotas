# == Schema Information
#
# Table name: sub_categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  image       :string
#  state       :boolean
#  icon        :string
#  user_id     :integer
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class SubCategory < ApplicationRecord
	belongs_to :category
	has_and_belongs_to_many :products, dependent: :destroy
end
