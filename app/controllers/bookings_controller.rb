class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @flight_selection = Flight.find(params[:selection][:flight_selection])
    @booking = Booking.new
    params[:selection][:no_of_passengers].to_i.times { @booking.passengers.build }
  end

  def create
    @flight_selection = Flight.find(params[:booking][:flight_id])
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
  end
end
