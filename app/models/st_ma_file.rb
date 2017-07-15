class StMaFile < ApplicationRecord
	attr_accessor :st_ma_father, :st_ma_mother, :st_ma_cellphone, :st_ma_passport, :st_ma_nationality, :st_ma_passport_photo, :st_ma_country, :st_ma_official_photo, :st_ma_passport_photo_cache, :st_ma_official_photo_cache, :st_country_wish, :st_city_wish, :st_univ_wish, :st_specialty_wish 
	has_one :st_wish
end
