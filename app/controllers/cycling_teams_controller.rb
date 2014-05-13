class CyclingTeamsController < ApplicationController
  before_action :set_cycling_team, only: [:show, :edit, :update, :destroy]

  # GET /cycling_teams
  # GET /cycling_teams.json
  def index
    @cycling_teams = CyclingTeam.all
  end

  # GET /cycling_teams/1
  # GET /cycling_teams/1.json
  def show
  end

  # GET /cycling_teams/new
  def new
    @cycling_team = CyclingTeam.new
  end

  # GET /cycling_teams/1/edit
  def edit
  end

  # POST /cycling_teams
  # POST /cycling_teams.json
  def create
    @cycling_team = CyclingTeam.new(cycling_team_params)

    respond_to do |format|
      if @cycling_team.save
        format.html { redirect_to @cycling_team, notice: 'Cycling team was successfully created.' }
        format.json { render :show, status: :created, location: @cycling_team }
      else
        format.html { render :new }
        format.json { render json: @cycling_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cycling_teams/1
  # PATCH/PUT /cycling_teams/1.json
  def update
    respond_to do |format|
      if @cycling_team.update(cycling_team_params)
        format.html { redirect_to @cycling_team, notice: 'Cycling team was successfully updated.' }
        format.json { render :show, status: :ok, location: @cycling_team }
      else
        format.html { render :edit }
        format.json { render json: @cycling_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cycling_teams/1
  # DELETE /cycling_teams/1.json
  def destroy
    @cycling_team.destroy
    respond_to do |format|
      format.html { redirect_to cycling_teams_url, notice: 'Cycling team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cycling_team
      @cycling_team = CyclingTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cycling_team_params
      params.require(:cycling_team).permit(:name, :description, :logo, :tdf)
    end
end
