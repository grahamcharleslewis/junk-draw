class SalesAndFinancesController < ApplicationController
  before_action :set_sales_and_finance, only: %i[ show edit update destroy ]

  # GET /sales_and_finances or /sales_and_finances.json
  def index
    @sales_and_finances = SalesAndFinance.all
  end

  # GET /sales_and_finances/1 or /sales_and_finances/1.json
  def show
  end

  # GET /sales_and_finances/new
  def new
    @sales_and_finance = SalesAndFinance.new
  end

  # GET /sales_and_finances/1/edit
  def edit
  end

  # POST /sales_and_finances or /sales_and_finances.json
  def create
    @sales_and_finance = SalesAndFinance.new(sales_and_finance_params)

    respond_to do |format|
      if @sales_and_finance.save
        format.html { redirect_to sales_and_finance_url(@sales_and_finance), notice: "Sales and finance was successfully created." }
        format.json { render :show, status: :created, location: @sales_and_finance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sales_and_finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sales_and_finances/1 or /sales_and_finances/1.json
  def update
    respond_to do |format|
      if @sales_and_finance.update(sales_and_finance_params)
        format.html { redirect_to sales_and_finance_url(@sales_and_finance), notice: "Sales and finance was successfully updated." }
        format.json { render :show, status: :ok, location: @sales_and_finance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sales_and_finance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales_and_finances/1 or /sales_and_finances/1.json
  def destroy
    @sales_and_finance.destroy

    respond_to do |format|
      format.html { redirect_to sales_and_finances_url, notice: "Sales and finance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sales_and_finance
      @sales_and_finance = SalesAndFinance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sales_and_finance_params
      params.require(:sales_and_finance).permit(:week_id, :lfl, :total_weekly_turnover, :delivery_turnover, :turnover, :budget, :footfall, :average_spend, :comments, :hours_last_year, :hours_this_year, :spmh, :returns, :stock_balance)
    end
end
