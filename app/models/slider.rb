class Slider < ApplicationRecord
	mount_uploader :image, SliderImageUploader
end
