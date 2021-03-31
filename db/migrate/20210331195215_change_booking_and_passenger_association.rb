class ChangeBookingAndPassengerAssociation < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :passenger
    add_reference :passengers, :booking
  end
end
