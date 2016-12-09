class RebuildsController < ApplicationController
  before_action :set_rebuild, only: [:show, :edit, :update, :destroy]

  # GET /rebuilds
  # GET /rebuilds.json
  def index
    @rebuilds = Rebuild.all
  end

  # GET /rebuilds/1
  # GET /rebuilds/1.json
  def show
  end

  # GET /rebuilds/new
  def new
    @rebuild = Rebuild.new
    
    if params.has_key?(:carro)
      carro = Car.find(params[:carro]) 
      @rebuild.CAR_id = carro.id
      @rebuild.HISTORY = 'Remontagem do carro ' + carro.NAME
      @rebuild.VALUE = (carro.FIPEVALUE * 0.01)
    end
    
  end

  # GET /rebuilds/1/edit
  def edit
  end

  # POST /rebuilds
  # POST /rebuilds.json
  def create
    @rebuild = Rebuild.new(rebuild_params)

    respond_to do |format|
      if @rebuild.save
        format.html { redirect_to @rebuild, notice: 'Rebuild was successfully created.' }
        format.json { render :show, status: :created, location: @rebuild }
      else
        format.html { render :new }
        format.json { render json: @rebuild.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rebuilds/1
  # PATCH/PUT /rebuilds/1.json
  def update
    respond_to do |format|
      if @rebuild.update(rebuild_params)
        format.html { redirect_to @rebuild, notice: 'Rebuild was successfully updated.' }
        format.json { render :show, status: :ok, location: @rebuild }
      else
        format.html { render :edit }
        format.json { render json: @rebuild.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rebuilds/1
  # DELETE /rebuilds/1.json
  def destroy
    @rebuild.destroy
    respond_to do |format|
      format.html { redirect_to rebuilds_url, notice: 'Rebuild was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rebuild
      @rebuild = Rebuild.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rebuild_params
      params.require(:rebuild).permit(:CAR_id, :VALUE, :HISTORY)
    end
end
