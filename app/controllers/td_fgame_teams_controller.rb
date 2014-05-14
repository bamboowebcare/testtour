class TdFgameTeamsController < ApplicationController
  before_action :set_td_fgame_team, only: [:show, :edit, :update, :destroy]

  # GET /td_fgame_teams
  # GET /td_fgame_teams.json
  def index
    @td_fgame_teams = TdFgameTeam.all
  end

  # GET /td_fgame_teams/1
  # GET /td_fgame_teams/1.json
  def show
  end

  # GET /td_fgame_teams/new
  def new
    @td_fgame_team = TdFgameTeam.new
  end

  # GET /td_fgame_teams/1/edit
  def edit
  end

  # POST /td_fgame_teams
  # POST /td_fgame_teams.json
  def create
    @td_fgame_team = TdFgameTeam.new(td_fgame_team_params)

    respond_to do |format|
      if @td_fgame_team.save
        format.html { redirect_to @td_fgame_team, notice: 'Td fgame team was successfully created.' }
        format.json { render :show, status: :created, location: @td_fgame_team }
      else
        format.html { render :new }
        format.json { render json: @td_fgame_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /td_fgame_teams/1
  # PATCH/PUT /td_fgame_teams/1.json
  def update
    respond_to do |format|
      if @td_fgame_team.update(td_fgame_team_params)
        format.html { redirect_to @td_fgame_team, notice: 'Td fgame team was successfully updated.' }
        format.json { render :show, status: :ok, location: @td_fgame_team }
      else
        format.html { render :edit }
        format.json { render json: @td_fgame_team.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /td_fgame_teams/1
  # DELETE /td_fgame_teams/1.json
  def destroy
    @td_fgame_team.destroy
    respond_to do |format|
      format.html { redirect_to td_fgame_teams_url, notice: 'Td fgame team was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_td_fgame_team
      @td_fgame_team = TdFgameTeam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def td_fgame_team_params
      params.require(:td_fgame_team).permit(:user_id, :name)
    end
end
