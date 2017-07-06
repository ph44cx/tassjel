class Faculty < ApplicationRecord
	belongs_to :university
	before_commit :trim_value

	private
	def trim_value
		self.uni_faculties_speciality = self.uni_faculties_speciality.delete('["''"] ,')
		self
	end
end
