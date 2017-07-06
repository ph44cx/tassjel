class UniversitiesController < ApplicationController
  before_action :set_university, only: [:show, :edit, :update, :destroy]

  # GET /universitys
  # GET /universitys.json
  def index
    @universities = University.all
  end

  # GET /universitys/1
  # GET /universitys/1.json
  def show
    respond_to do |format|
      format.js{}
    end
  end

  # GET /universitys/new
  def new
    @university = University.new
  end

  # GET /universitys/1/edit
  def edit
    respond_to do |format|
      format.js{}
    end
  end

  # POST /universitys
  # POST /universitys.json
  def create
    @university = University.new(university_params)

    respond_to do |format|
      if @university.save
        format.js{}
      else
        format.js{}
      end
    end
  end

  # PATCH/PUT /universitys/1
  # PATCH/PUT /universitys/1.json
  def update
    @university.update(university_params)
    respond_to do |format|
      format.js{}
    end
  end

  # DELETE /universitys/1
  # DELETE /universitys/1.json
  def destroy
    @university.destroy
    respond_to do |format|
      format.html { redirect_to universities_url, notice: 'University was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_university
      @university = University.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def university_params
      params.require(:university).permit(:uni_country, :uni_city, :uni_name, :uni_sector, :uni_state_ava_fees, :uni_inst_state_ava_fees, :uni_private_med_ava_fees, :uni_private_den_ava_fees, :uni_private_eng_ava_fees, :uni_private_lit_ava_fees, :uni_inst_private_fees, :uni_faculties_number, :uni_faculties_name, :uni_faculties_speciality, :uni_institution_number, :uni_institutions_name, :uni_institution_speciality, :university_profile_id, :faculties_attributes => [ :id, :uni_faculties_number, :uni_faculties_name, {:uni_faculties_speciality => []}], :universities_attributes => [ :id, :uni_institution_number, :uni_institution_name, {:uni_institution_speciality => []}] )
    end
end
