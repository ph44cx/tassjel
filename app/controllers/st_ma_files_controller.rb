class StMaFilesController < ApplicationController
  before_action :set_st_ma_file, only: [:show, :edit, :update, :destroy]

  # GET /st_ma_files
  # GET /st_ma_files.json
  def index
    @st_ma_files = StMaFile.all
  end

  # GET /st_ma_files/1
  # GET /st_ma_files/1.json
  def show
  end

  # GET /st_ma_files/new
  def new
    @st_ma_file = StMaFile.new
  end

  # GET /st_ma_files/1/edit
  def edit
  end

  # POST /st_ma_files
  # POST /st_ma_files.json
  def create
    @st_ma_file = StMaFile.new(st_ma_file_params)

    respond_to do |format|
      if @st_ma_file.save
        format.html { redirect_to @st_ma_file, notice: 'St ma file was successfully created.' }
        format.json { render :show, status: :created, location: @st_ma_file }
      else
        format.html { render :new }
        format.json { render json: @st_ma_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_ma_files/1
  # PATCH/PUT /st_ma_files/1.json
  def update
    respond_to do |format|
      if @st_ma_file.update(st_ma_file_params)
        format.html { redirect_to @st_ma_file, notice: 'St ma file was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_ma_file }
      else
        format.html { render :edit }
        format.json { render json: @st_ma_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_ma_files/1
  # DELETE /st_ma_files/1.json
  def destroy
    @st_ma_file.destroy
    respond_to do |format|
      format.html { redirect_to st_ma_files_url, notice: 'St ma file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_ma_file
      @st_ma_file = StMaFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_ma_file_params
      params.require(:st_ma_file).permit(:st_ma_cer_source, :st_ma_cer_field, :st_ma_cer_marks, :st_ma_cer_year, :st_ma_passport_photo, :st_ma_offical_photo, :st_ma_extra_photo1, :st_ma_extra_photo2, :user_id)
    end
end
