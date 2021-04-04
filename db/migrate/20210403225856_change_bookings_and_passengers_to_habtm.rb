class ChangeBookingsAndPassengersToHabtm < ActiveRecord::Migration[6.1]
  def change
    remove_reference :passengers, :booking
    
    create_table :bookings_passengers, id: false do |t|
      t.references :booking
      t.references :passenger
    end
  end
end
