class University < ApplicationRecord
	belongs_to :university_profile
	has_many :faculties, :dependent => :destroy
	has_many :institutions, :dependent => :destroy
	COUNTRY= ['Turkey', 'Ukraine', 'Malaysia', 'Cyprus', 'Canada', 'Russia', 'UK', 'Germany']
	FACULTYSPECIALITY = { "Medicine Faculty" => ["Dentist", "Cardiology", "Pathology", "Infectious disease"],
												"Engineering Faculty" => ["Computer", "Bio Medical", "Information Technology", "Electrical Technology", "Civil Technology"],
												"Law Faculty" => ["Economics", "Employment Discrimination", "Criminal Defense", "Civil Litigation", "Comparative Law"],
												"Literature Faculty" => ["Employment Discrimination", "Medieval Resources"]
											}
	accepts_nested_attributes_for :faculties, allow_destroy: true
	accepts_nested_attributes_for :institutions, allow_destroy: true

	# def finder(str)
	# 	FACULTYSPECIALITY[str] || FACULTYSPECIALITY.key(str)
	# end

	# def faculty_name_finder
	# 	self.all.each do |record|
	# 		record.faculties.map(&:uni_faculties_speciality) == finder(record.faculties.map(&:uni_faculties_speciality)
	# 	end
	# end

end
