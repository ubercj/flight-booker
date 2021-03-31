class Flight < ApplicationRecord
  belongs_to :origin_port, class_name: "Airport"
  belongs_to :destination_port, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings


  def flight_details
    "Departing: #{self.origin_port.code}\n
    Arriving: #{self.destination_port.code}\n
    Flight date: #{self.formatted_date}\n
    Flight duration: #{self.duration} minutes"
  end

  def formatted_date
    date.strftime("%m/%d/%Y")
  end
end
