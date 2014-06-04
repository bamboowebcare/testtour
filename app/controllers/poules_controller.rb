class PoulesController < ApplicationController
  before_action :set_poule, only: [:show, :edit, :update, :destroy]

  # GET /poules
  # GET /poules.json
  def index
    @poules = Poule.all
  end

  # GET /poules/1
  # GET /poules/1.json
  def show
  end

  # GET /poules/new
  def new
    @poule = Poule.new
  end

  # GET /poules/1/edit
  def edit
  end

  # POST /poules
  # POST /poules.json
  def create
    @poule = Poule.new(poule_params)

    respond_to do |format|
      if @poule.save
        format.html { redirect_to @poule, notice: 'Poule was successfully created.' }
        format.json { render :show, status: :created, location: @poule }
      else
        format.html { render :new }
        format.json { render json: @poule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poules/1
  # PATCH/PUT /poules/1.json
  def update
    respond_to do |format|
      if @poule.update(poule_params)
        format.html { redirect_to @poule, notice: 'Poule was successfully updated.' }
        format.json { render :show, status: :ok, location: @poule }
      else
        format.html { render :edit }
        format.json { render json: @poule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poules/1
  # DELETE /poules/1.json
  def destroy
    @poule.destroy
    respond_to do |format|
      format.html { redirect_to poules_url, notice: 'Poule was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poule
      @poule = Poule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poule_params
      params.require(:poule).permit(:name, :encrypted_password, :reset_password_token, :user_id)
    end
end
