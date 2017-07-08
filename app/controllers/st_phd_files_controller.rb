class StPhdFilesController < ApplicationController
  before_action :set_st_phd_file, only: [:show, :edit, :update, :destroy]

  # GET /st_phd_files
  # GET /st_phd_files.json
  def index
    @st_phd_files = StPhdFile.all
  end

  # GET /st_phd_files/1
  # GET /st_phd_files/1.json
  def show
  end

  # GET /st_phd_files/new
  def new
    @st_phd_file = StPhdFile.new
  end

  # GET /st_phd_files/1/edit
  def edit
  end

  # POST /st_phd_files
  # POST /st_phd_files.json
  def create
    @st_phd_file = StPhdFile.new(st_phd_file_params)

    respond_to do |format|
      if @st_phd_file.save
        format.html { redirect_to @st_phd_file, notice: 'St phd file was successfully created.' }
        format.json { render :show, status: :created, location: @st_phd_file }
      else
        format.html { render :new }
        format.json { render json: @st_phd_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_phd_files/1
  # PATCH/PUT /st_phd_files/1.json
  def update
    respond_to do |format|
      if @st_phd_file.update(st_phd_file_params)
        format.html { redirect_to @st_phd_file, notice: 'St phd file was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_phd_file }
      else
        format.html { render :edit }
        format.json { render json: @st_phd_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_phd_files/1
  # DELETE /st_phd_files/1.json
  def destroy
    @st_phd_file.destroy
    respond_to do |format|
      format.html { redirect_to st_phd_files_url, notice: 'St phd file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_phd_file
      @st_phd_file = StPhdFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_phd_file_params
      params.require(:st_phd_file).permit(:st_maba_cer_source, :st_maba_cer_field, :st_maba_cer_marks, :st_maba_cer_year, :st_maphd_cer_source, :st_maphd_cer_field, :st_maphd_cer_marks)
    end
end
