class UnmDashController < ApplicationController
  def index
  	@university = University.new
  	@universitys = University.all
  	@university_profiles = UniversityProfile.all
  	@university_profile = UniversityProfile.new
  	@countries = Country.all
  	@cities = City.where('country_id=?', Country.first.id)
    @faculties = FacultyName.all
    @faculty_specialties = FacultySpeciality.where('faculty_name_id=?', FacultyName.first.id)
  end

  def update_cities
  	@cities = City.where("country_id = ?", params[:country_id])
    respond_to do |format|
      format.js
    end
  end

  def update_faculties
    @faculty_specialties = FacultySpeciality.where("faculty_name_id = ?", params[:faculty_name_id])
    respond_to do |format|
      format.js
    end
  end

   def update_faculties1
    @faculty_specialties = FacultySpeciality.where("faculty_name_id = ?", params[:faculty_name_id])
    respond_to do |format|
      format.js
    end
  end

   def update_faculties2
    @faculty_specialties = FacultySpeciality.where("faculty_name_id = ?", params[:faculty_name_id])
    respond_to do |format|
      format.js
    end
  end

   def update_faculties3
    @faculty_specialties = FacultySpeciality.where("faculty_name_id = ?", params[:faculty_name_id])
    respond_to do |format|
      format.js
    end
  end
end
