# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

sfo = Airport.create(code: "SFO", city: "San Francisco")
ind = Airport.create(code: "IND", city: "Indianapolis")
nyc = Airport.create(code: "NYC", city: "New York City")

sf_to_indy = Flight.create(date: "2021-03-30", duration: 360, origin_port_id: 1, destination_port_id: 2)
indy_to_nyc = Flight.create(date: "2021-03-31", duration: 180, origin_port_id: 2, destination_port_id: 3)
nyc_to_sfo = Flight.create(date: "2021-04-01", duration: 540, origin_port_id: 3, destination_port_id: 1)
indy_to_nyc_2 = Flight.create(date: "2021-04-01", duration: 190, origin_port_id: 2, destination_port_id: 3)
sf_to_indy_2 = Flight.create(date: "2021-03-31", duration: 370, origin_port_id: 1, destination_port_id: 2)
nyc_to_indy = Flight.create(date: "2021-03-30", duration: 200, origin_port_id: 3, destination_port_id: 2)
sfo_to_nyc = Flight.create(date: "2021-04-02", duration: 550, origin_port_id: 1, destination_port_id: 3)