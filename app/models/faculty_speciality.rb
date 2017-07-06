class FacultySpeciality < ApplicationRecord
	validates_uniqueness_of :speciality
end
