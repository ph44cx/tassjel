class FacultyName < ApplicationRecord
	validates_uniqueness_of :name
end
