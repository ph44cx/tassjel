class StProfilesController < ApplicationController
  before_action :set_st_profile, only: [:show, :edit, :update, :destroy]

  def show
    
  end

  def new
  end

  def edit
    respond_to do |format|
      format.js{}
    end
  end

  def create
    @st_profile = st_Profile.new(st_profile_params)

    respond_to do |format|
      if @st_profile.save
        format.js{}
      else
        format.js{}
      end
    end
  end

  def update
    respond_to do |format| 
      if @st_profile.update(st_profile_params)
        format.js{}
      else
        format.js{}
      end
    end
  end

  private
    def set_st_profile
      @st_profile = StProfile.find(params[:id])
    end

    def st_profile_params
      params.require(:st_profile).permit(:st_ba_name, :st_ba_surname, :st_ba_father, :st_ba_mother, :st_ba_cellphone, :st_ba_passport, :st_ba_nationality)
    end
end
