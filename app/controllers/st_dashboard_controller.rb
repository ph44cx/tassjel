class StDashboardController < ApplicationController
  def index
    if user_signed_in?
      @st_profile = StProfile.find_by_user_id(current_user.id)
    end
  end

  def membership
  	respond_to do |format|
  		format.js{}
  	end
  end

  def instruction
  	respond_to do |format|
  		format.js{}
  	end
  end

  def uploaded_files
  	respond_to do |format|
  		format.js{}
  	end
  end
end
