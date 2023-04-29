class OperationsAndCompliancesController < ApplicationController
  before_action :set_operations_and_compliance, only: %i[ show edit update destroy ]

  # GET /operations_and_compliances or /operations_and_compliances.json
  def index
    @operations_and_compliances = OperationsAndCompliance.all
  end

  # GET /operations_and_compliances/1 or /operations_and_compliances/1.json
  def show
  end

  # GET /operations_and_compliances/new
  def new
    @operations_and_compliance = OperationsAndCompliance.new
  end

  # GET /operations_and_compliances/1/edit
  def edit
  end

  # POST /operations_and_compliances or /operations_and_compliances.json
  def create
    @operations_and_compliance = OperationsAndCompliance.new(operations_and_compliance_params)

    respond_to do |format|
      if @operations_and_compliance.save
        format.html { redirect_to operations_and_compliance_url(@operations_and_compliance), notice: "Operations and compliance was successfully created." }
        format.json { render :show, status: :created, location: @operations_and_compliance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @operations_and_compliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operations_and_compliances/1 or /operations_and_compliances/1.json
  def update
    respond_to do |format|
      if @operations_and_compliance.update(operations_and_compliance_params)
        format.html { redirect_to operations_and_compliance_url(@operations_and_compliance), notice: "Operations and compliance was successfully updated." }
        format.json { render :show, status: :ok, location: @operations_and_compliance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @operations_and_compliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operations_and_compliances/1 or /operations_and_compliances/1.json
  def destroy
    @operations_and_compliance.destroy

    respond_to do |format|
      format.html { redirect_to operations_and_compliances_url, notice: "Operations and compliance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operations_and_compliance
      @operations_and_compliance = OperationsAndCompliance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def operations_and_compliance_params
      params.require(:operations_and_compliance).permit(:week_id, :essential_fs_and_legal, :retail_ops, :health_and_safety, :uber_rating, :just_eat, :eho)
    end
end
