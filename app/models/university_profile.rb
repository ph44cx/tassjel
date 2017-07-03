class UniversityProfile < ApplicationRecord
	attr_accessor :university_name
	has_one :university
end
