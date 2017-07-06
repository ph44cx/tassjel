class UnmDashController < ApplicationController
  def index
  	@university = University.new
  	@universitys = University.all
  	@university_profiles = UniversityProfile.all
  	@university_profile = UniversityProfile.new
  	@faculty_names = FacultyName.all
    @faculty_specialities = FacultySpeciality.where("faculty_name_id = ?", FacultyName.first.id)
  end

  def update_specialities
    @faculty_specialities = FacultySpeciality.where("faculty_name_id = ?", params[:faculty_name_id])
    respond_to do |format|
      format.js
    end
  end

end
