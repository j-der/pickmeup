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

22.times do
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.email = Faker::Internet.email
  user.password = "password"
  # user.driver = boolean.sample
  user.avatar = "http://lorempixel.com/200/200/people"
  user.save
end

Ride.destroy_all

Ride.create(title: "shoppers world brampton to union station", origin: "Shoppers World Brampton",
    destination: "Union Station, Toronto", available_seats: 3, user_id: 1)

Ride.create(title: "Leslieville to Eaton Centre", origin: "Leslieville, Toronto",
    destination: "Eaton Centre, Toronto", available_seats: 2, user_id: 2)

Ride.create(title: "mississauga to Financial District", origin: "Square One, Mississauga",
    destination: "Financial District, Toronto", available_seats: 4, user_id: 3)

Ride.create(title: "Mavis and Rathburn to Rogers Centre", origin: "Mavis and Rathburn, Mississauga",
    destination: "Rogers Centre, Toronto", available_seats: 1, user_id: 4)

Ride.create(title: "Keele and Lawrence to Vaughn Mills", origin: "Keele and Lawrence, Toronto",
    destination: "Vaughn Mills, Vaughn",  available_seats: 3, user_id: 5)

sleep(1)
 #added to avoid going over google query limit
Ride.create(title: "Barrie to Toronto", origin: "Barrie",
    destination: "Toronto",  available_seats: 2, user_id: 6)

Ride.create(title: "Brampton to Toronto", origin: "Brampton",
    destination: "Toronto",  available_seats: 5, user_id: 7)

Ride.create(title: "Etobicoke to Toronto", origin: "Etobicoke, ON",
    destination: "Toronto",  available_seats: 2, user_id: 8)

Ride.create(title: "Mississauga to Toronto", origin: "Mississauga",
    destination: "Toronto",  available_seats: 4, user_id: 9)

sleep(1)

Ride.create(title: "Scarborough to Toronto", origin: "Scarborough, ON",
    destination: "Toronto",  available_seats: 3, user_id: 10)

Ride.create(title: "Burlington to CN Tower", origin: "Burlington, ON",
    destination: "CN Tower, Toronto",  available_seats: 2, user_id: 11)

Ride.create(title: "Burnhamthorpe and Mavis to Lawrence and Bathurst", origin: "Burnhamthorpe and Mavis, Mississauga, ON",
    destination: "Lawrence and Bathurst, Toronto, ON",  available_seats: 3, user_id: 12)

Ride.create(title: "Caledon, ON to Scarborough Town Centre ", origin: "Caledon, ON",
    destination: "Scarborough Town Centre, ON",  available_seats: 3, user_id: 13)

Ride.create(title: "Streetsville to Sauble Beach, ON", origin: "Streetsville, Mississauga",
    destination: "Sauble Beach, ON",  available_seats: 3, user_id: 14)

Ride.create(title: "Guelph to Algonquin", origin: "Guelph, ON",
    destination: "Algonquin Park",  available_seats: 3, user_id: 15)

sleep(1)

Ride.create(title: "Daily Commute", origin: "230 Elizabeth St. Orangeville, ON",
    destination: "46 Spadina Ave. Toronto",  available_seats: 2, user_id: 16)

Ride.create(title: "Ridesharing", origin: "Yonge and Sheppard, Toronto, ON",
    destination: "University Ave and Queen Street West",  available_seats: 2, user_id: 17)

Ride.create(title: "Wayhome Music Festival", origin: "Toronto, ON",
    destination: "180 8th Line South Oro-Medonte, Ontario",  available_seats: 2, user_id: 18)

Ride.create(title: "Orangeville commute", origin: "7 Fead St. Orangeville, ON",
    destination: "Yonge and Adelaide, Toronto",  available_seats: 1, user_id: 19)

Ride.create(title: "Wayhome!!!", origin: "Barrie, ON",
    destination: "180 8th Line South Oro-Medonte, Ontario",  available_seats: 2, user_id: 20)

Ride.create(title: "Going to Wayhome?", origin: "Brampton, ON",
    destination: "180 8th Line South Oro-Medonte, Ontario",  available_seats: 2, user_id: 21)

sleep(1)

Ride.create(title: "Midtown to Mississauga", origin: "Lawrence Ave. and Glen Rush Blvd, Toronto, ON",
    destination: "Burnhamthorpe and Confederation Pkwy, Mississauga, ON",  available_seats: 2, user_id: 22)

Ride.create(title: "Commuting to Toronto", origin: "Yonge and Mapleview, Barrie, ON",
    destination: "King and University, Toronto, ON",  available_seats: 3, user_id: 23)

Ride.create(title: "East to downtown TO", origin: "Scarborough Town Centre, Borough Drive, Scarborough, ON",
    destination: "King and Bathurst, Toronto, ON",  available_seats: 2, user_id: 24)

Ride.create(title: "Wayhome Music Festival", origin: "Toronto, ON",
    destination: "180 8th Line South Oro-Medonte, Ontario",  available_seats: 2, user_id: 25)
