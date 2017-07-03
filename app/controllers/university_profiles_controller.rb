class UniversityProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_university_profile, only: [:show, :edit, :update, :destroy]

  # GET /university_profiles
  # GET /university_profiles.json
  def index
    @university_profiles = UniversityProfile.all
    @university_profile = UniversityProfile.new
  end

  # GET /university_profiles/1
  # GET /university_profiles/1.json
  def show
  end

  # GET /university_profiles/new
  def new
    @university_profile = UniversityProfile.new
      respond_to do |format|
        format.js{}
      end
  end

  # GET /university_profiles/1/edit
  def edit
  end

  # POST /university_profiles
  # POST /university_profiles.json
  def create
    @university = UnmUn.find_by_uni_name(params[:university_profile][:unm_un_name])
    @university_profile = UniversityProfile.new(university_profile_params)

    respond_to do |format|
      if @university_profile.save
        @university.update(university_profile_id: @university_profile.id)
        format.js{}
      else
        format.js{}
      end
    end
  end

  # PATCH/PUT /university_profiles/1
  # PATCH/PUT /university_profiles/1.json
  def update
    respond_to do |format|
      if @university_profile.update(university_profile_params)
        format.html { redirect_to @university_profile, notice: 'University profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @university_profile }
      else
        format.html { render :edit }
        format.json { render json: @university_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /university_profiles/1
  # DELETE /university_profiles/1.json
  def destroy
    @university_profile.destroy
    respond_to do |format|
      format.html { redirect_to university_profiles_url, notice: 'University profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university_profile
      @university_profile = UniversityProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def university_profile_params
      params.require(:university_profile).permit(:uni_logo, :uni_description, :uni_galaries, :uni_log_rank, :uni_founded_date, :uni_url, :uni_email, :uni_phone1, :uni_phone2, :uni_fax, :uni_address, :unm_un_name)
    end
end