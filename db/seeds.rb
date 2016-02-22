# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

boolean = [true, false]

User.create(first_name: "Justin", last_name: "Arruda", email: "justin@arruda.com",
    driver: true, passenger: true)
User.create(first_name: "Tessa", last_name: "Kruger", email: "tessa@kruger.com",
    driver: false, passenger: true)
User.create(first_name: "Jas", last_name: "Der", email: "jas@der.com",
    driver: true, passenger: false)

10.times do
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.email = Faker::Internet.email
  user.driver = boolean.sample
  user.passenger = boolean.sample
  user.save
end

Ride.destroy_all
# , seats: 4, users_id: 5

Ride.create(title: "shoppers world brampton to union station", origin_latitude: 43.665937, origin_longitude: -79.735601,
    destination_latitude: 43.646253, destination_longitude: -79.380704)
Ride.create(title: "Leslieville to Eaton Centre", origin_latitude: 43.666573, origin_longitude: -79.326289,
    destination_latitude: 43.654687, destination_longitude: -79.380699)
Ride.create(title: "mississauga to heart of Financial District", origin_latitude: 43.593136, origin_longitude: -79.642961,
    destination_latitude: 43.648746, destination_longitude: -79.380275)
Ride.create(title: "mississauga to heart of Financial District", origin_latitude: 43.593136, origin_longitude: -79.642961,
    destination_latitude: 43.648746, destination_longitude: -79.380275)
Ride.create(title: "Keele and Lawrence to Vaughn Mills", origin_latitude: 43.708807, origin_longitude: -79.477932,
    destination_latitude: 43.827390, destination_longitude: -79.538783)