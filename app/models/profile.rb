class Profile < ApplicationRecord
	mount_uploader :st_ba_passport_photo, StBaPassportPhotoUploader
	mount_uploader :st_ba_official_photo, StBaOfficialPhotoUploader
	belongs_to :user
end
