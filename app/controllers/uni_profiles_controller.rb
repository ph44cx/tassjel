class UniProfilesController < ApplicationController
  before_action :set_uni_profile, only: [:show, :edit, :update, :destroy]

  # GET /uni_profiles
  # GET /uni_profiles.json
  def index
    @uni_profiles = UniProfile.all
  end

  # GET /uni_profiles/1
  # GET /uni_profiles/1.json
  def show
  end

  # GET /uni_profiles/new
  def new
    @uni_profile = UniProfile.new
  end

  # GET /uni_profiles/1/edit
  def edit
  end

  # POST /uni_profiles
  # POST /uni_profiles.json
  def create
    @uni_profile = UniProfile.new(uni_profile_params)

    respond_to do |format|
      if @uni_profile.save
        format.html { redirect_to @uni_profile, notice: 'Uni profile was successfully created.' }
        format.json { render :show, status: :created, location: @uni_profile }
      else
        format.html { render :new }
        format.json { render json: @uni_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uni_profiles/1
  # PATCH/PUT /uni_profiles/1.json
  def update
    respond_to do |format|
      if @uni_profile.update(uni_profile_params)
        format.html { redirect_to @uni_profile, notice: 'Uni profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @uni_profile }
      else
        format.html { render :edit }
        format.json { render json: @uni_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uni_profiles/1
  # DELETE /uni_profiles/1.json
  def destroy
    @uni_profile.destroy
    respond_to do |format|
      format.html { redirect_to uni_profiles_url, notice: 'Uni profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uni_profile
      @uni_profile = UniProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uni_profile_params
      params.require(:uni_profile).permit(:uni_logo, :uni_description, :uni_galaries, :uni_log_rank, :uni_founded_date, :uni_url, :uni_email, :uni_phone1, :uni_phone2, :uni_fax, :uni_address)
    end
end
