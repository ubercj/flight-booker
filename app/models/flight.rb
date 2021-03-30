class Flight < ApplicationRecord
  belongs_to :origin_port, class_name: "Airport"
  belongs_to :destination_port, class_name: "Airport"
end
