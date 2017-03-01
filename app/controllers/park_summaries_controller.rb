class ParkSummariesController < ApplicationController
  before_action :set_park_summary, only: [:show, :edit, :update, :destroy]

  # GET /park_summaries
  # GET /park_summaries.json
  def index
    @q = ParkSummary.order(:id).ransack(params[:q])
    @park_summaries = @q.result(distinct: true).page params[:page]

    @page_header = "Recreation & Park Department Park Info Dataset"
  end

  # GET /park_summaries/1
  # GET /park_summaries/1.json
  def show
  end

  # GET /park_summaries/new
  def new
    @park_summary = ParkSummary.new
  end

  # GET /park_summaries/1/edit
  def edit
  end

  # POST /park_summaries
  # POST /park_summaries.json
  def create
    @park_summary = ParkSummary.new(park_summary_params)

    respond_to do |format|
      if @park_summary.save
        format.html { redirect_to @park_summary, notice: 'Park summary was successfully created.' }
        format.json { render :show, status: :created, location: @park_summary }
      else
        format.html { render :new }
        format.json { render json: @park_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /park_summaries/1
  # PATCH/PUT /park_summaries/1.json
  def update
    respond_to do |format|
      if @park_summary.update(park_summary_params)
        format.html { redirect_to @park_summary, notice: 'Park summary was successfully updated.' }
        format.json { render :show, status: :ok, location: @park_summary }
      else
        format.html { render :edit }
        format.json { render json: @park_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /park_summaries/1
  # DELETE /park_summaries/1.json
  def destroy
    @park_summary.destroy
    respond_to do |format|
      format.html { redirect_to park_summaries_url, notice: 'Park summary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park_summary
      @park_summary = ParkSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def park_summary_params
      params.require(:park_summary).permit(:park_name, :park_type, :park_service_area, :psa_manager, :email, :number, :zipcode, :acreage, :sup_dist, :parkid, :location, :lat)
    end
end
