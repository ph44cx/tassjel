class UniversityProfile < ApplicationRecord
	attr_accessor :university_name
	has_one :university
	mount_uploaders :uni_galaries, UniGalariesUploader
	mount_uploader :uni_logo, UniLogoUploader
	mount_uploader :uni_cover_photo, UniCoverPhotoUploader
	serialize :uni_galaries, JSON
end
