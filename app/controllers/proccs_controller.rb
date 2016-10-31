class ProccsController < ApplicationController
  before_action :set_procc, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /proccs
  # GET /proccs.json
  def index
    @proccs = Procc.all
  end

  # GET /proccs/1
  # GET /proccs/1.json
  def show
  end

  # GET /proccs/new
  def new
    @procc = Procc.new
  end

  # GET /proccs/1/edit
  def edit
  end

  # POST /proccs
  # POST /proccs.json
  def create
    @procc = Procc.new(procc_params)

    respond_to do |format|
      if @procc.save
        format.html { redirect_to @procc, notice: 'Procc was successfully created.' }
        format.json { render :show, status: :created, location: @procc }
      else
        format.html { render :new }
        format.json { render json: @procc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proccs/1
  # PATCH/PUT /proccs/1.json
  def update
    respond_to do |format|
      if @procc.update(procc_params)
        format.html { redirect_to @procc, notice: 'Procc was successfully updated.' }
        format.json { render :show, status: :ok, location: @procc }
      else
        format.html { render :edit }
        format.json { render json: @procc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proccs/1
  # DELETE /proccs/1.json
  def destroy
    @procc.destroy
    respond_to do |format|
      format.html { redirect_to proccs_url, notice: 'Procc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_procc
      @procc = Procc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def procc_params
      params.require(:procc).permit(:NAME)
    end
end
