class TourTeamsController < ApplicationController
   before_action :set_tour_team, only: [:show, :edit, :update, :destroy]



 # GET /tour_teams
  # GET /tour_teams.json
  def index
	@tour_team = TourTeam.all
  end

  # GET /tour_teams/1
  # GET /tour_teams/1.json
  def show
  end

  # GET /tour_teams/new
  def new
  end

  # GET /tour_teams/1/edit
  def edit
  end

  # POST /tour_teams
  # POST /tour_teams.json
  def create
    @tour_team = TourTeam.new(tour_team_params)

    respond_to do |format|
      if @tour_team.save
        format.html { redirect_to @tour_team, notice: 'Tour team was successfully created.' }
        format.json { render :show, status: :created, location: @tour_team }
      else
        format.html { render :new }
        format.json { render json: @tour_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tour_teams/1
  # PATCH/PUT /tour_teams/1.json
  def update
    respond_to do |format|
      if @tour_team.update(tour_team_params)
        format.html { redirect_to @tour_team, notice: 'Tour team was successfully updated.' }
        format.json { render :show, status: :ok, location: @tour_team }
      else
        format.html { render :edit }
        format.json { render json: @tour_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_teams/1
  # DELETE /tour_teams/1.json
  def destroy
    @tour_team.destroy
    respond_to do |format|
      format.html { redirect_to tour_teams_url, notice: 'Tour team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tour_team
      @tour_team = TourTeam.find(params[:id])
    end

    def set_user
      @user = current_user
    end

   # Never trust parameters from the scary internet, only allow the white list through.
    def tour_team_params
      params.require(:tour_team).permit(:name, :user_id, :poule_id)
    end
end
