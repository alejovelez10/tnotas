# == Schema Information
#
# Table name: sliders
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  image       :string
#  state       :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Slider < ApplicationRecord
	mount_uploader :image, SliderImageUploader
end
