class UnmUnsController < ApplicationController
  before_action :set_unm_un, only: [:show, :edit, :update, :destroy]

  # GET /unm_uns
  # GET /unm_uns.json
  def index
    @unm_uns = UnmUn.all
  end

  # GET /unm_uns/1
  # GET /unm_uns/1.json
  def show
    respond_to do |format|
      format.js{}
    end
  end

  # GET /unm_uns/new
  def new
    @unm_un = UnmUn.new
  end

  # GET /unm_uns/1/edit
  def edit
    respond_to do |format|
      format.js{}
    end
  end

  # POST /unm_uns
  # POST /unm_uns.json
  def create
    @unm_un = UnmUn.new(unm_un_params)

    respond_to do |format|
      if @unm_un.save
        format.js{}
      else
        format.js{}
      end
    end
  end

  # PATCH/PUT /unm_uns/1
  # PATCH/PUT /unm_uns/1.json
  def update
    respond_to do |format|
      format.js{}
    end
  end

  # DELETE /unm_uns/1
  # DELETE /unm_uns/1.json
  def destroy
    @unm_un.destroy
    respond_to do |format|
      format.html { redirect_to unm_uns_url, notice: 'University was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unm_un
      @unm_un = UnmUn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unm_un_params
      params.require(:unm_un).permit(:uni_country, :uni_city, :uni_name, :uni_sector, :uni_state_ava_fees, :uni_inst_state_ava_fees, :uni_private_med_ava_fees, :uni_private_den_ava_fees, :uni_private_eng_ava_fees, :uni_private_lit_ava_fees, :uni_inst_private_fees, :uni_faculties_number, :uni_faculties_name, :uni_faculties_speciality, :uni_institution_number, :uni_institutions_name, :uni_institution_speciality)
    end
end
