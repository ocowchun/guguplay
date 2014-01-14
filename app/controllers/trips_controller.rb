class TripsController < ApplicationController
  def new
    @trip=Trip.new
  end
  def create
    @trip=Trip.new(trip_params)
    if @trip.save
      redirect_to trip_path(@trip)
    else
      render :new
    end
  end

  def show
    find_trip
@places=@trip.places
  end

  private
  def find_trip
    @trip=Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:name)
  end
end
