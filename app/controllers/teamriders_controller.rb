class TeamridersController < ApplicationController
  before_action :set_teamrider, only: [:show, :edit, :update, :destroy]

  # GET /teamriders
  # GET /teamriders.json
  def index
    @teamriders = Teamrider.all
  end

  # GET /teamriders/1
  # GET /teamriders/1.json
  def show
  end

  # GET /teamriders/new
  def new
    @teamrider = Teamrider.new
  end

  # GET /teamriders/1/edit
  def edit
  end

  # POST /teamriders
  # POST /teamriders.json
  def create
    @teamrider = Teamrider.new(teamrider_params)

    respond_to do |format|
      if @teamrider.save
        format.html { redirect_to @teamrider, notice: 'Teamrider was successfully created.' }
        format.json { render :show, status: :created, location: @teamrider }
      else
        format.html { render :new }
        format.json { render json: @teamrider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teamriders/1
  # PATCH/PUT /teamriders/1.json
  def update
    respond_to do |format|
      if @teamrider.update(teamrider_params)
        format.html { redirect_to @teamrider, notice: 'Teamrider was successfully updated.' }
        format.json { render :show, status: :ok, location: @teamrider }
      else
        format.html { render :edit }
        format.json { render json: @teamrider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teamriders/1
  # DELETE /teamriders/1.json
  def destroy
    @teamrider.destroy
    respond_to do |format|
      format.html { redirect_to teamriders_url, notice: 'Teamrider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teamrider
      @teamrider = Teamrider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teamrider_params
      params.require(:teamrider).permit(:team_id, :rider_id)
    end
end
