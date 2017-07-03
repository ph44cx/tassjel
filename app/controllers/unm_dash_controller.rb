class UnmDashController < ApplicationController
  def index
  	@university = University.new
  	@universitys = University.all
  	@university_profiles = UniversityProfile.all
  	@university_profile = UniversityProfile.new
  end
end
