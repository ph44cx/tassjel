class University < ApplicationRecord
	belongs_to :university_profile
	has_many :faculties, :dependent => :destroy
	COUNTRY= ['Turkey', 'Ukraine', 'Malaysia', 'Cyprus', 'Canada', 'Russia', 'UK', 'Germany']
	FACULTYSPECIALITY = { "Medicine Faculty" => ["Dentist", "Cardiology", "Pathology", "Infectious disease"],
												"Engineering Faculty" => ["Computer", "Bio Medical", "Information Technology", "Electrical Technology", "Civil Technology"],
												"Law Faculty" => ["Economics", "Employment Discrimination", "Criminal Defense", "Civil Litigation", "Comparative Law"],
												"Literature Faculty" => ["Employment Discrimination", "Medieval Resources"]
											}

	accepts_nested_attributes_for :faculties, allow_destroy: true
	before_save :faculty_name_finder

	def finder(str)
		FACULTYSPECIALITY[str] || FACULTYSPECIALITY.key(str)
	end

	def faculty_name_finder
			self.faculties.map(&:uni_faculties_speciality) == finder(self.faculties.map(&:uni_faculties_speciality))
			binding.pry
	end
end