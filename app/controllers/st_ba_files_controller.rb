class StBaFilesController < ApplicationController
  before_action :set_st_ba_file, only: [:show, :edit, :update, :destroy]

  # GET /st_ba_files
  # GET /st_ba_files.json
  def index
    @st_ba_files = StBaFile.all
  end

  # GET /st_ba_files/1
  # GET /st_ba_files/1.json
  def show
  end

  # GET /st_ba_files/new
  def new
    @st_ba_file = StBaFile.new
  end

  # GET /st_ba_files/1/edit
  def edit
  end

  # POST /st_ba_files
  # POST /st_ba_files.json
  def create
    @st_ba_file = StBaFile.new(st_ba_file_params)

    respond_to do |format|
      if @st_ba_file.save
        format.html { redirect_to @st_ba_file, notice: 'St file ba was successfully created.' }
        format.json { render :show, status: :created, location: @st_ba_file }
      else
        format.html { render :new }
        format.json { render json: @st_ba_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_ba_files/1
  # PATCH/PUT /st_ba_files/1.json
  def update
    respond_to do |format|
      if @st_ba_file.update(st_ba_file_params)
        format.html { redirect_to @st_ba_file, notice: 'St file ba was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_ba_file }
      else
        format.html { render :edit }
        format.json { render json: @st_ba_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_ba_files/1
  # DELETE /st_ba_files/1.json
  def destroy
    @st_ba_file.destroy
    respond_to do |format|
      format.html { redirect_to st_ba_files_url, notice: 'St file ba was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_ba_file
      @st_ba_file = StBaFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_ba_file_params
      params.require(:st_ba_file).permit(:st_ba_cer_source, :st_ba_cer_marks, :st_ba_cer_year, :st_ba_cer_extra, :st_ba_cer_extra_cert, :st_ba_cer_extra_sat, :st_ba_cer_extra_gcse, :st_ba_cer_extra_tahseli, :st_ba_cer_extra_qudorat, :st_ba_cer_extra_yos, :st_ba_cer_extra_mearyi, :st_ba_cer_lang, :st_ba_cer_lang_toefl, :st_ba_cer_lang_ielts, :st_ba_cer_lang_other, :st_ba_cer_photo, :st_ba_cer_photo_transcript, :st_ba_cer_extra_photo1, :st_ba_cer_extra_photo2, :st_ba_cer_extra_photo3, :st_ba_cer_extra_photo4)
    end
end
