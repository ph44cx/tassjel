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
        format.html { redirect_to st_dashboard_url, notice: 'Your Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_profile }
      else
        format.json { render json: @st_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_st_profile
      @st_profile = StProfile.find(params[:id])
    end

    def st_profile_params
      params.require(:st_profile).permit(:st_ba_name, :st_ba_surname, :st_ba_father, :st_ba_mother, :st_ba_cellphone, :st_ba_passport, :st_ba_nationality, :st_ba_passport_photo, :st_ba_official_photo, :st_ba_passport_photo_cache, :st_ba_official_photo_cache)
    end
end
