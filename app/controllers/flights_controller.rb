class FlightsController < ApplicationController
  
  
  def index
    if params[:commit].nil?
      @flights = Flight.all
    else
      @flights = search_results
    end
  end

  def show
    @flight = Flight.find(params[:id])
  end

  private

  def search_results
    if flight_params[:date] == ""
      Flight.where(origin_port_id: flight_params[:origin_port_id], destination_port_id: flight_params[:destination_port_id])
    else
      Flight.where(origin_port_id: flight_params[:origin_port_id], destination_port_id: flight_params[:destination_port_id], date: flight_params[:date])
    end
  end

  def flight_params
    params.permit(:origin_port_id, :destination_port_id, :date, :no_of_passengers)
  end
end
