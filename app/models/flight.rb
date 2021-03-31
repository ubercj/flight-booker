class Flight < ApplicationRecord
  belongs_to :origin_port, class_name: "Airport"
  belongs_to :destination_port, class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings

  def formatted_date
    date.strftime("%m/%d/%Y")
  end
end
