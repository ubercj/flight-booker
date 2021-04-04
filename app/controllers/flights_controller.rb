class FlightsController < ApplicationController
  def index
    if params[:commit].nil?
      @flights = Flight.all
    else
      @flights = Flight.where("origin_port_id = ? AND destination_port_id = ? AND date = ?", flight_params[:origin_port_id], flight_params[:destination_port_id], flight_params[:date])
    end

    @flight_dates = Flight.all.map { |flight| flight.date.strftime("%m/%d/%Y") }.uniq
  end

  def show
    @flight = Flight.find(params[:id])
  end

  private

  def flight_params
    params.permit(:origin_port_id, :destination_port_id, :date, :no_of_passengers)
  end
end
