class StudentDashboardController < ApplicationController
  def index
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
