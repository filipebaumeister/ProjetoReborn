class CustomerprovidersController < ApplicationController
  before_action :set_customerprovider, only: [:show, :edit, :update, :destroy]

  # GET /customerproviders
  # GET /customerproviders.json
  def index
    @customerproviders = Customerprovider.all
  end

  # GET /customerproviders/1
  # GET /customerproviders/1.json
  def show
  end

  # GET /customerproviders/new
  def new
    @customerprovider = Customerprovider.new
  end

  # GET /customerproviders/1/edit
  def edit
  end

  # POST /customerproviders
  # POST /customerproviders.json
  def create
    @customerprovider = Customerprovider.new(customerprovider_params)

    respond_to do |format|
      if @customerprovider.save
        format.html { redirect_to @customerprovider, notice: 'Customerprovider was successfully created.' }
        format.json { render :show, status: :created, location: @customerprovider }
      else
        format.html { render :new }
        format.json { render json: @customerprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customerproviders/1
  # PATCH/PUT /customerproviders/1.json
  def update
    respond_to do |format|
      if @customerprovider.update(customerprovider_params)
        format.html { redirect_to @customerprovider, notice: 'Customerprovider was successfully updated.' }
        format.json { render :show, status: :ok, location: @customerprovider }
      else
        format.html { render :edit }
        format.json { render json: @customerprovider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customerproviders/1
  # DELETE /customerproviders/1.json
  def destroy
    @customerprovider.destroy
    respond_to do |format|
      format.html { redirect_to customerproviders_url, notice: 'Customerprovider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customerprovider
      @customerprovider = Customerprovider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customerprovider_params
      params.require(:customerprovider).permit(:NAME, :ADDRESS, :EMAIL, :BIRTHDAY, :CPFCNPJ, :FISOUJUR, :PHONE1, :PHONE2, :CUSPRO)
    end
end
