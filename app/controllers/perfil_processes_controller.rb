class PerfilProcessesController < ApplicationController
  before_action :set_perfil_process, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /perfil_processes
  # GET /perfil_processes.json
  def index
    @perfil_processes = PerfilProcess.all
  end

  # GET /perfil_processes/1
  # GET /perfil_processes/1.json
  def show
  end

  # GET /perfil_processes/new
  def new
    @perfil_process = PerfilProcess.new
  end

  # GET /perfil_processes/1/edit
  def edit
  end

  # POST /perfil_processes
  # POST /perfil_processes.json
  def create
    @perfil_process = PerfilProcess.new(perfil_process_params)

    respond_to do |format|
      if @perfil_process.save
        format.html { redirect_to @perfil_process, notice: 'Perfil process was successfully created.' }
        format.json { render :show, status: :created, location: @perfil_process }
      else
        format.html { render :new }
        format.json { render json: @perfil_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perfil_processes/1
  # PATCH/PUT /perfil_processes/1.json
  def update
    respond_to do |format|
      if @perfil_process.update(perfil_process_params)
        format.html { redirect_to @perfil_process, notice: 'Perfil process was successfully updated.' }
        format.json { render :show, status: :ok, location: @perfil_process }
      else
        format.html { render :edit }
        format.json { render json: @perfil_process.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perfil_processes/1
  # DELETE /perfil_processes/1.json
  def destroy
    @perfil_process.destroy
    respond_to do |format|
      format.html { redirect_to perfil_processes_url, notice: 'Perfil process was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perfil_process
      @perfil_process = PerfilProcess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perfil_process_params
      params.require(:perfil_process).permit(:PERFIL_id, :PROCC_id, :ABLE)
    end
end
