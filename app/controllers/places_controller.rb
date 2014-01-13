class PlacesController < ApplicationController

  def new
    @place=Place.new
    find_trip
  end

  def create
    find_trip
    @place=Place.new(place_params)
    if @place.save
      add_place_to_trip @place,@trip
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  private
  def find_place
    @place=Place.find(params[:id])
  end

  def find_trip
    @trip=Trip.find(params[:trip_id])
  end


  def place_params
    params.require(:place).permit(:name,:address)
  end

  def add_place_to_trip place,trip
    trip_placeship=TripPlaceship.new
    trip_placeship.place_id=place.id
    trip_placeship.trip_id=trip.id
    trip_placeship.save
  end

end
