class RebuildCarsController < ApplicationController
  before_action :set_rebuild_car, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /rebuild_cars
  # GET /rebuild_cars.json
  def index
    @rebuild_cars = RebuildCar.all
  end

  # GET /rebuild_cars/1
  # GET /rebuild_cars/1.json
  def show
  end

  # GET /rebuild_cars/new
  def new
    @rebuild_car = RebuildCar.new
  end

  # GET /rebuild_cars/1/edit
  def edit
  end

  # POST /rebuild_cars
  # POST /rebuild_cars.json
  def create
    @rebuild_car = RebuildCar.new(rebuild_car_params)

    respond_to do |format|
      if @rebuild_car.save
        format.html { redirect_to @rebuild_car, notice: 'Rebuild car was successfully created.' }
        format.json { render :show, status: :created, location: @rebuild_car }
      else
        format.html { render :new }
        format.json { render json: @rebuild_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rebuild_cars/1
  # PATCH/PUT /rebuild_cars/1.json
  def update
    respond_to do |format|
      if @rebuild_car.update(rebuild_car_params)
        format.html { redirect_to @rebuild_car, notice: 'Rebuild car was successfully updated.' }
        format.json { render :show, status: :ok, location: @rebuild_car }
      else
        format.html { render :edit }
        format.json { render json: @rebuild_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rebuild_cars/1
  # DELETE /rebuild_cars/1.json
  def destroy
    @rebuild_car.destroy
    respond_to do |format|
      format.html { redirect_to rebuild_cars_url, notice: 'Rebuild car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rebuild_car
      @rebuild_car = RebuildCar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rebuild_car_params
      params.require(:rebuild_car).permit(:CAR_id, :REBUILD_id)
    end
end
