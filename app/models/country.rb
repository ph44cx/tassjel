class Country < ApplicationRecord
	validates_uniqueness_of :name
	has_many :cities, -> { ordered_name }
end
