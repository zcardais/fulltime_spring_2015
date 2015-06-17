class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  include ApplicationHelper

  # GET /locations
  # GET /locations.json
  def index
    @locations = Location.all
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    # below is the URL for the MARTA API, from this is where we pull the data of all active MARTA buses
    source = 'http://developer.itsmarta.com/BRDRestService/BRDRestService.svc/GetAllBus'

    # we'll need to parse the data into an array of hashes, following method will be defined in the Helper
    @buses = fetch_url_data(source)

    @bus_count = 0

    @nearby_buses = []

    @buses.each do |bus|
      # once again we'll use a method defined the in the helper
      if nearby(@location.longitude, @location.latitude, bus["LONGITUDE"].to_f, bus["LATITUDE"].to_f)
        @bus_count += 1
        @nearby_buses.push(bus)
      end
    end
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:address, :city, :latitude, :longitude)
    end
end
