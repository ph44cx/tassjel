class StTrFilesController < ApplicationController
  before_action :set_st_tr_file, only: [:show, :edit, :update, :destroy]

  # GET /st_tr_files
  # GET /st_tr_files.json
  def index
    @st_tr_files = StTrFile.all
  end

  # GET /st_tr_files/1
  # GET /st_tr_files/1.json
  def show
  end

  # GET /st_tr_files/new
  def new
    @st_tr_file = StTrFile.new
  end

  # GET /st_tr_files/1/edit
  def edit
    respond_to do |format|
      format.js{}
    end
  end

  # POST /st_tr_files
  # POST /st_tr_files.json
  def create
    @st_tr_file = StTrFile.new(st_tr_file_params)

    respond_to do |format|
      if @st_tr_file.save
        format.html { redirect_to st_dashboard_url, notice: 'St tr file was successfully created.' }
        format.json { render :show, status: :created, location: @st_tr_file }
      else
        format.html { render :new }
        format.json { render json: @st_tr_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /st_tr_files/1
  # PATCH/PUT /st_tr_files/1.json
  def update
    respond_to do |format|
      if @st_tr_file.update(st_tr_file_params)
        format.html { redirect_to st_dashboard_url, notice: 'St tr file was successfully updated.' }
        format.json { render :show, status: :ok, location: @st_tr_file }
      else
        format.html { render :edit }
        format.json { render json: @st_tr_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /st_tr_files/1
  # DELETE /st_tr_files/1.json
  def destroy
    @st_tr_file.destroy
    respond_to do |format|
      format.html { redirect_to st_tr_files_url, notice: 'St tr file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_st_tr_file
      @st_tr_file = StTrFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def st_tr_file_params
      params.require(:st_tr_file).permit(:st_ma_un_field, :st_tr_un_source, :st_tr_un_name, :st_tr_un_sem, :st_tr_photo1, :st_tr_photo2, :st_tr_extra_photo1, :st_tr_extra_photo2, :st_tr_un_target, :st_tr_un_name, :user_id)
    end
end
