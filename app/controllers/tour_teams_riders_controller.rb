class TourTeamsRidersController < ApplicationController
  before_action :set_tour_teams_rider, only: [:show, :edit, :update, :destroy]

  # GET /tour_teams_riders
  # GET /tour_teams_riders.json
  def index
    @tour_teams_riders = TourTeamsRider.all
  end

  # GET /tour_teams_riders/1
  # GET /tour_teams_riders/1.json
  def show
  end

  # GET /tour_teams_riders/new
  def new
    @tour_teams_rider = TourTeamsRider.new
  end

  # GET /tour_teams_riders/1/edit
  def edit
  end

  # POST /tour_teams_riders
  # POST /tour_teams_riders.json
  def create
    @tour_teams_rider = TourTeamsRider.new(tour_teams_rider_params)

    respond_to do |format|
      if @tour_teams_rider.save
        format.html { redirect_to @tour_teams_rider, notice: 'Tour teams rider was successfully created.' }
        format.json { render :show, status: :created, location: @tour_teams_rider }
      else
        format.html { render :new }
        format.json { render json: @tour_teams_rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_teams_riders/1
  # PATCH/PUT /tour_teams_riders/1.json
  def update
    respond_to do |format|
      if @tour_teams_rider.update(tour_teams_rider_params)
        format.html { redirect_to @tour_teams_rider, notice: 'Tour teams rider was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_teams_rider }
      else
        format.html { render :edit }
        format.json { render json: @tour_teams_rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_teams_riders/1
  # DELETE /tour_teams_riders/1.json
  def destroy
    @tour_teams_rider.destroy
    respond_to do |format|
      format.html { redirect_to tour_teams_riders_url, notice: 'Tour teams rider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_teams_rider
      @tour_teams_rider = TourTeamsRider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tour_teams_rider_params
      params.require(:tour_teams_rider).permit(:tour_team_id, :rider_id)
    end
end
