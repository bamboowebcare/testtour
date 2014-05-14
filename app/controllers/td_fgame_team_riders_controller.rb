class TdFgameTeamRidersController < ApplicationController
  before_action :set_td_fgame_team_rider, only: [:show, :edit, :update, :destroy]

  # GET /td_fgame_team_riders
  # GET /td_fgame_team_riders.json
  def index
    @td_fgame_team_riders = TdFgameTeamRider.all
  end

  # GET /td_fgame_team_riders/1
  # GET /td_fgame_team_riders/1.json
  def show
  end

  # GET /td_fgame_team_riders/new
  def new
    @td_fgame_team_rider = TdFgameTeamRider.new
  end

  # GET /td_fgame_team_riders/1/edit
  def edit
  end

  # POST /td_fgame_team_riders
  # POST /td_fgame_team_riders.json
  def create
    @td_fgame_team_rider = TdFgameTeamRider.new(td_fgame_team_rider_params)

    respond_to do |format|
      if @td_fgame_team_rider.save
        format.html { redirect_to @td_fgame_team_rider, notice: 'Td fgame team rider was successfully created.' }
        format.json { render :show, status: :created, location: @td_fgame_team_rider }
      else
        format.html { render :new }
        format.json { render json: @td_fgame_team_rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /td_fgame_team_riders/1
  # PATCH/PUT /td_fgame_team_riders/1.json
  def update
    respond_to do |format|
      if @td_fgame_team_rider.update(td_fgame_team_rider_params)
        format.html { redirect_to @td_fgame_team_rider, notice: 'Td fgame team rider was successfully updated.' }
        format.json { render :show, status: :ok, location: @td_fgame_team_rider }
      else
        format.html { render :edit }
        format.json { render json: @td_fgame_team_rider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /td_fgame_team_riders/1
  # DELETE /td_fgame_team_riders/1.json
  def destroy
    @td_fgame_team_rider.destroy
    respond_to do |format|
      format.html { redirect_to td_fgame_team_riders_url, notice: 'Td fgame team rider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_td_fgame_team_rider
      @td_fgame_team_rider = TdFgameTeamRider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def td_fgame_team_rider_params
      params.require(:td_fgame_team_rider).permit(:tdfgameteam_id, :rider_id)
    end
end
