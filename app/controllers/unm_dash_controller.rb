class UnmDashController < ApplicationController
  def index
  	@unm_un = UnmUn.new
  	@unm_uns = UnmUn.all
  	@university_profiles = UniversityProfile.all
  	@university_profile = UniversityProfile.new
  end
end
