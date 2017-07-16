class Blog < ApplicationRecord
	mount_uploader :blog_image, BlogImageUploader
	has_many :comments, dependent: :destroy
end
