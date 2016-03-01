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
    driver: true, passenger: true, password: "password", avatar: "http://lorempixel.com/200/200/people")
User.create(first_name: "Tessa", last_name: "Kruger", email: "tessa@kruger.com",
    driver: false, passenger: true, password: "password", avatar: "http://lorempixel.com/200/200/people")
User.create(first_name: "Jas", last_name: "Der", email: "jas@der.com",
    driver: true, passenger: false, password: "password", avatar: "http://lorempixel.com/200/200/people")

10.times do
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.email = Faker::Internet.email
  user.password = "password"
  user.driver = boolean.sample
  user.avatar = "http://lorempixel.com/200/200/people"
  user.save
end

Ride.destroy_all

Ride.create(title: "shoppers world brampton to union station", origin: "Shoppers World Brampton",
    destination: "Union Station, Toronto", available_seats: 3)
Ride.create(title: "Leslieville to Eaton Centre", origin: "Leslieville, Toronto",
    destination: "Eaton Centre, Toronto", available_seats: 2)
Ride.create(title: "mississauga to Financial District", origin: "Square One, Mississauga",
    destination: "Financial District, Toronto", available_seats: 4)
Ride.create(title: "Mavis and Rathburn to Rogers Centre", origin: "Mavis and Rathburn, Mississauga",
    destination: "Rogers Centre, Toronto", available_seats: 1)
Ride.create(title: "Keele and Lawrence to Vaughn Mills", origin: "Keele and Lawrence, Toronto",
    destination: "Vaughn Mills, Vaughn",  available_seats: 3)
sleep(1) #added to avoid going over google query limit
Ride.create(title: "Barrie to Toronto", origin: "Barrie",
    destination: "Toronto",  available_seats: 2)
Ride.create(title: "Brampton to Toronto", origin: "Brampton",
    destination: "Toronto",  available_seats: 5)
Ride.create(title: "Etobicoke to Toronto", origin: "Etobicoke, ON",
    destination: "Toronto",  available_seats: 2)
Ride.create(title: "Mississauga to Toronto", origin: "Mississauga",
    destination: "Toronto",  available_seats: 4)
sleep(1)
Ride.create(title: "Scarborough to Toronto", origin: "Scarborough, ON",
    destination: "Toronto",  available_seats: 3)
Ride.create(title: "Burlington to CN Tower", origin: "Burlington, ON",
    destination: "CN Tower, Toronto",  available_seats: 2)
Ride.create(title: "Burnhamthorpe and Mavis to Lawrence and Bathurst", origin: "Burnhamthorpe and Mavis, Mississauga, ON",
    destination: "Lawrence and Bathurst, Toronto, ON",  available_seats: 3)
Ride.create(title: "Caledon, ON to Scarborough Town Centre ", origin: "Caledon, ON",
    destination: "Scarborough Town Centre, ON",  available_seats: 3)
Ride.create(title: "Streetsville to Sauble Beach, ON", origin: "Streetsville, Mississauga",
    destination: "Sauble Beach, ON",  available_seats: 3)
Ride.create(title: "Guelph to Algonquin", origin: "Guelph, ON",
    destination: "Algonquin Park",  available_seats: 3)