class StPhdFile < ApplicationRecord
	attr_accessor :st_ba_father, :st_ba_mother, :st_ba_cellphone, :st_ba_passport, :st_ba_nationality, :st_ba_passport_photo, :st_ba_official_photo, :st_ba_passport_photo_cache, :st_ba_official_photo_cache
	belongs_to :user
end
