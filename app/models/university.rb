class University < ApplicationRecord
	belongs_to :university_profile
	has_many :faculties, :dependent => :destroy
	COUNTRY= ['Turkey', 'Ukraine', 'Malaysia', 'Cyprus', 'Canada', 'Russia', 'UK', 'Germany']
	FACULTYSPECIALITY= ['Bio-technolgy', 'Software', 'Mathematics', 'Science', 'Artifical Intelligence', 'Robotics']
	accepts_nested_attributes_for :faculties, allow_destroy: true
end
