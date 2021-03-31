class Flight < ApplicationRecord
  belongs_to :origin_port, class_name: "Airport"
  belongs_to :destination_port, class_name: "Airport"

  def flight_info
    "Book this flight"
  end

  def formatted_date
    date.strftime("%m/%d/%Y")
  end
end
