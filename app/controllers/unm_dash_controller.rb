class UnmDashController < ApplicationController
  def index
  	@university = University.new
  	@universitys = University.all
  	@university_profiles = UniversityProfile.all
  	@university_profile = UniversityProfile.new
  	@countries = Country.all
  	@cities = City.where('country_id=?', Country.first.id)
  end

  def update_cities
  	@cities = City.where("country_id = ?", params[:country_id])
    respond_to do |format|
      format.js
    end
  end
end
