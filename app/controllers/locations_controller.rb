class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create

    @location = Location.new(location_params)
    if @location.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def location_params
    params.require(:location).permit(:name, :address, :capacity, :city_id)
  end
end

