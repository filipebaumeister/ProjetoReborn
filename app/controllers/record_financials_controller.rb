class RecordFinancialsController < ApplicationController
  before_action :set_record_financial, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  
  # GET /record_financials
  # GET /record_financials.json
  def index
    @record_financials = RecordFinancial.all
  end

  # GET /record_financials/1
  # GET /record_financials/1.json
  def show
  end

  # GET /record_financials/new
  def new
    @record_financial = RecordFinancial.new
  end

  # GET /record_financials/1/edit
  def edit
  end

  # POST /record_financials
  # POST /record_financials.json
  def create
    @record_financial = RecordFinancial.new(record_financial_params)

    respond_to do |format|
      if @record_financial.save
        format.html { redirect_to @record_financial, notice: 'Record financial was successfully created.' }
        format.json { render :show, status: :created, location: @record_financial }
      else
        format.html { render :new }
        format.json { render json: @record_financial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /record_financials/1
  # PATCH/PUT /record_financials/1.json
  def update
    respond_to do |format|
      if @record_financial.update(record_financial_params)
        format.html { redirect_to @record_financial, notice: 'Record financial was successfully updated.' }
        format.json { render :show, status: :ok, location: @record_financial }
      else
        format.html { render :edit }
        format.json { render json: @record_financial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /record_financials/1
  # DELETE /record_financials/1.json
  def destroy
    @record_financial.destroy
    respond_to do |format|
      format.html { redirect_to record_financials_url, notice: 'Record financial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record_financial
      @record_financial = RecordFinancial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def record_financial_params
      params.require(:record_financial).permit(:FINANCIAL_id, :RECORD_id)
    end
end
