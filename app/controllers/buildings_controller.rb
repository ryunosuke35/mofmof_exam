class BuildingsController < ApplicationController
  before_action :set_building, only: %i[ show edit update destroy ]

  # GET /buildings or /buildings.json
  def index
    @buildings = Building.all
  end

  # GET /buildings/1 or /buildings/1.json
  def show
  end

  # GET /buildings/new
  def new
    @building = Building.new
  end

  # GET /buildings/1/edit
  def edit
  end

  # POST /buildings or /buildings.json
  def create
    @building = Building.new(building_params)
      if @building.save
        redirect_to @building, notice: "Building was successfully created."
      else
        render :new, status: :unprocessable_entity
      end
    end

  # PATCH/PUT /buildings/1 or /buildings/1.json
  def update
      if @building.update(building_params)
        redirect_to @building, notice: "Building was successfully updated."
      else
        render :edit, status: :unprocessable_entity
      end
    end

  # DELETE /buildings/1 or /buildings/1.json
  def destroy
    @building.destroy
      redirect_to buildings_url, notice: "Building was successfully destroyed."
    end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_building
      @building = Building.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def building_params
      params.require(:building).permit(:name, :rent, :address, :age_of_building, :note)
    end
end
