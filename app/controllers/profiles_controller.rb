class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

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
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format| 
      if @profile.update(profile_params)
        format.js{}
      else
        format.js{}
      end
    end
  end

  private
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def profile_params
      params.require(:profile).permit(:st_ba_name, :st_ba_surname, :st_ba_father, :st_ba_mother, :st_ba_cellphone, :st_ba_passport, :st_ba_nationality)
    end
end
