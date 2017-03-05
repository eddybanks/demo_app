class FilmLocationSummariesController < ApplicationController
  before_action :set_film_location_summary, only: [:show, :edit, :update, :destroy]

  # GET /film_location_summaries
  # GET /film_location_summaries.json
  def index
    @q = FilmLocationSummary.order(:id).ransack(params[:q])
    @film_location_summaries = @q.result(distinct: true).page params[:page]

    @page_header = "Film Locations in San Francisco"
  end

  # GET /film_location_summaries/1
  # GET /film_location_summaries/1.json
  def show
  end

  # GET /film_location_summaries/new
  def new
    @film_location_summary = FilmLocationSummary.new
  end

  # GET /film_location_summaries/1/edit
  def edit
  end

  # POST /film_location_summaries
  # POST /film_location_summaries.json
  def create
    @film_location_summary = FilmLocationSummary.new(film_location_summary_params)

    respond_to do |format|
      if @film_location_summary.save
        format.html { redirect_to @film_location_summary, notice: 'Film location summary was successfully created.' }
        format.json { render :show, status: :created, location: @film_location_summary }
      else
        format.html { render :new }
        format.json { render json: @film_location_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /film_location_summaries/1
  # PATCH/PUT /film_location_summaries/1.json
  def update
    respond_to do |format|
      if @film_location_summary.update(film_location_summary_params)
        format.html { redirect_to @film_location_summary, notice: 'Film location summary was successfully updated.' }
        format.json { render :show, status: :ok, location: @film_location_summary }
      else
        format.html { render :edit }
        format.json { render json: @film_location_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /film_location_summaries/1
  # DELETE /film_location_summaries/1.json
  def destroy
    @film_location_summary.destroy
    respond_to do |format|
      format.html { redirect_to film_location_summaries_url, notice: 'Film location summary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film_location_summary
      @film_location_summary = FilmLocationSummary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_location_summary_params
      params.require(:film_location_summary).permit(:title, :release_year, :locations, :fun_facts, :production_company, :distributor, :director, :writer, :actor1, :actor2, :actor3)
    end
end
