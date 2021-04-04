# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(code: "SFO", city: "San Francisco")
Airport.create(code: "IND", city: "Indianapolis")
Airport.create(code: "NYC", city: "New York City")

Flight.create(date: "2021-03-30", duration: 360, origin_port_id: 1, destination_port_id: 2)
Flight.create(date: "2021-03-30", duration: 200, origin_port_id: 3, destination_port_id: 2)
Flight.create(date: "2021-03-30", duration: 355, origin_port_id: 2, destination_port_id: 1)
Flight.create(date: "2021-03-30", duration: 600, origin_port_id: 3, destination_port_id: 1)

Flight.create(date: "2021-03-31", duration: 180, origin_port_id: 2, destination_port_id: 3)
Flight.create(date: "2021-03-31", duration: 370, origin_port_id: 1, destination_port_id: 2)
Flight.create(date: "2021-03-31", duration: 585, origin_port_id: 1, destination_port_id: 3)
Flight.create(date: "2021-03-31", duration: 590, origin_port_id: 3, destination_port_id: 1)

Flight.create(date: "2021-04-01", duration: 540, origin_port_id: 3, destination_port_id: 1)
Flight.create(date: "2021-04-01", duration: 190, origin_port_id: 2, destination_port_id: 3)
Flight.create(date: "2021-04-01", duration: 365, origin_port_id: 1, destination_port_id: 2)
Flight.create(date: "2021-04-01", duration: 357, origin_port_id: 2, destination_port_id: 1)

Flight.create(date: "2021-04-02", duration: 550, origin_port_id: 1, destination_port_id: 3)
Flight.create(date: "2021-04-02", duration: 350, origin_port_id: 1, destination_port_id: 2)
Flight.create(date: "2021-04-02", duration: 150, origin_port_id: 2, destination_port_id: 3)
Flight.create(date: "2021-04-02", duration: 165, origin_port_id: 3, destination_port_id: 2)
Flight.create(date: "2021-04-02", duration: 555, origin_port_id: 3, destination_port_id: 1)