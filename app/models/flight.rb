class Flight < ApplicationRecord
  belongs_to :origin_port, class_name: "Airport"
  belongs_to :destination_port, class_name: "Airport"

  def flight_info
    "Departs from #{origin_port.code} on #{formatted_date}.\nArrives at #{destination_port.code}.\nTotal flight time is #{duration} minutes."
  end

  def formatted_date
    date.strftime("%m/%d/%Y")
  end
end
