  # This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
#   Run these two commands (in psql) after db:drop, db:create, db:migrate
#   ALTER SEQUENCE rides_id_seq RESTART WITH 1;
#   ALTER SEQUENCE rides_id_seq RESTART WITH 1;

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
  user.avatar = ["http://lorempixel.com/200/200/people/", "http://lorempixel.com/200/200/people/", "http://lorempixel.com/200/200/people/", "http://lorempixel.com/200/200/people/"].sample
  user.save
end

Ride.destroy_all

Ride.create(title: "Shoppers World Brampton to Union Station", origin: "Shoppers World Brampton",
    destination: "Union Station, Toronto", available_seats: 3, details: "I drive Monday - Friday to Union. Can pick up from Shoppers World Brampton. Leave by 8:00AM.", available_seats: 2, user_id: 1)

Ride.create(title: "Leslieville to Eaton Centre", origin: "Leslieville, Toronto",
    destination: "Eaton Centre, Toronto", details: "I get sick on streetcars so I drive to the Eaton Centre where I work evenings. Parking and gas is getting costly, would like to share the costs. If you're can't stand Toronto streetcars too, hit me up for a ride! I usually leave around 4PM, Thursdays to Sundays.", available_seats: 2, user_id: 2)
sleep(1)
Ride.create(title: "Mississauga to Financial District", origin: "Square One, Mississauga", details: "I work in the finance district, looking to share my commute with someone. Leave 7:30AM, Monday-Friday. Can pick up near/at Square One.", 
    destination: "Financial District, Toronto", available_seats: 4, user_id: 3)

Ride.create(title: "Mavis and Rathburn to Rogers Centre", details: "Going to the Jays game this Thursday, anyone wanna join? Can pick up near Mavis in sauga.", origin: "Mavis and Rathburn, Mississauga",
    destination: "Rogers Centre, Toronto", available_seats: 1, user_id: 4)

Ride.create(title: "Keele and Lawrence to Vaughan Mills", details: "Going on a shopping spree on Saturday! Anyone need a ride? Planning to leave around 10AM.", origin: "Keele and Lawrence, Toronto",
    destination: "Vaughan Mills, Vaughn",  available_seats: 3, user_id: 5)
sleep(1)
Ride.create(title: "Barrie to Toronto", details: "Heading to the city to meet some friends for dinner. Looking to share fuel costs. Leaving Friday at 5:30PM.",origin: "Barrie",
    destination: "Toronto",  available_seats: 2, user_id: 6)

Ride.create(title: "Brampton to Toronto", details: "Visiting my SO on Saturdays, offering to share a ride those days to Toronto. Usually leave around 11AM. Can drop off anywhere near the Gardiner.",origin: "Brampton",
    destination: "Toronto",  available_seats: 5, user_id: 7)

Ride.create(title: "Etobicoke to Toronto", details: "Going to Dimpflmeier? You can pay me in rye bread if you need a ride to Toronto. Daily (M-F) 3PM.", origin: "Etobicoke, ON",
    destination: "Toronto",  available_seats: 2, user_id: 8)

Ride.create(title: "Mississauga to Toronto", details: "I work in Toronto, leave Mississauga at 8:00AM. Can drop off anywhere along my route.",origin: "Mississauga",
    destination: "Toronto",  available_seats: 4, user_id: 9)

sleep(1)

Ride.create(title: "Scarborough to Toronto", details: "Recently bought a car, need help paying for gas! Daily Monday-Friday, leave around 7:30AM. Morningside and Lawrence area.", origin: "Scarborough, ON",
    destination: "Toronto",  available_seats: 3, user_id: 10)

Ride.create(title: "Burlington to CN Tower", details: "Meeting some friends from out of town, offering a ride from Burlington, leaving 12PM Sunday.", origin: "Burlington, ON",
    destination: "CN Tower, Toronto",  available_seats: 2, user_id: 11)

Ride.create(title: "Burnhamthorpe and Mavis to Lawrence and Bathurst", details: "Going on a random roadtrip to Lawrence and Bathurst! Leaving Thursday at noon. LMK!", origin: "Burnhamthorpe and Mavis, Mississauga, ON",
    destination: "Lawrence and Bathurst, Toronto, ON",  available_seats: 3, user_id: 12)
sleep(1)
Ride.create(title: "Caledon, ON to Scarborough Town Centre ", details: "Headed to a family dinner at STC, leaving at 5PM on Friday. Can pick up anywhere between Queen and Mayfield on HWY 50.", origin: "Caledon, ON",
    destination: "Scarborough Town Centre, ON",  available_seats: 3, user_id: 13)

Ride.create(title: "Streetsville to Sauble Beach, ON", details: "Recently bought a car, need help paying for gas! Daily Monday-Friday, leave around 7:30AM. Morningside and Lawrence area.", origin: "Streetsville, Mississauga",
    destination: "Sauble Beach, ON",  available_seats: 3, user_id: 14)

Ride.create(title: "Guelph to Algonquin", details: "Roadtrip to Algonquin anyone?! Wanna leave this Sat at 5AM, can pick up anywhere in Guelph/Kitchener. Room for 3!", origin: "Guelph, ON",
    destination: "Algonquin Park",  available_seats: 3, user_id: 15)

sleep(1)

Ride.create(title: "Daily Commute", details: "It's a long commute to Toronto from Orangeville. Maybe you're sick of the GO bus? I play some sick tunes on Spotify. Usually leave around 7AM Monday-Friday.", origin: "230 Elizabeth St. Orangeville, ON",
    destination: "46 Spadina Ave. Toronto",  available_seats: 2, user_id: 16)

Ride.create(title: "Ridesharing", details: "I get free parking at work so I prefer to drive than take the TTC! Got space for 2 people if you run the same commute. Monday-Fri leave at 8am.", origin: "Yonge and Sheppard, Toronto, ON",
    destination: "University Ave and Queen Street West",  available_seats: 2, user_id: 17)

Ride.create(title: "Wayhome Music Festival", details: "WAYHOMEEEEEEE! Went last year with a random group of people and it was amaaazing. Want to do it again. Got space for 2, have my own tent as well.", origin: "46 Spadina Ave, Toronto, ON",
    destination: "180 8th Line South Oro-Medonte, Ontario",  available_seats: 2, user_id: 18)

Ride.create(title: "Orangeville commute", details: "I work near the financial district. If you can keep me awake, I'll offer you a ride! I usually leave at 6am mon-fri.", origin: "7 Fead St. Orangeville, ON",
    destination: "Yonge and Adelaide, Toronto",  available_seats: 1, user_id: 19)

Ride.create(title: "Wayhome!!!", details: "Got space for 2 in my dad mobile!", origin: "Barrie, ON",
    destination: "180 8th Line South Oro-Medonte, Ontario",  available_seats: 2, user_id: 20)

Ride.create(title: "Going to Wayhome?", details: "We're a couple of students going to Wayhome this year. Offering a ride for 2 more!", origin: "Milton, ON",
    destination: "180 8th Line South Oro-Medonte, Ontario",  available_seats: 2, user_id: 21)

sleep(1)

Ride.create(title: "Midtown to Mississauga", details: "Recently bought a car, need help paying for gas! Daily Monday-Friday, leave around 7:30AM. Morningside and Lawrence area.", origin: "Lawrence Ave. and Glen Rush Blvd, Toronto, ON",
    destination: "Burnhamthorpe and Confederation Pkwy, Mississauga, ON",  available_seats: 2, user_id: 22)

Ride.create(title: "Commuting to Toronto", details: "Offering a ride in exchange for keeping me awake! Leave daily at 8am.", origin: "Yonge and Mapleview, Barrie, ON",
    destination: "King and University, Toronto, ON",  available_seats: 3, user_id: 23)

Ride.create(title: "East to downtown TO", details: "Daily drive to downtown. Leave at 8ish every morning. No cash to pay for gas, but will accept coffee!", origin: "Scarborough Town Centre, Borough Drive, Scarborough, ON",
    destination: "King and Bathurst, Toronto, ON",  available_seats: 2, user_id: 24)

Ride.create(title: "Wayhome Music Festival", details: "Yo homies, looking for a ride to Wayhome? We've got 2 spots available - the more the merrier!", origin: "Liberty Village, Toronto, ON",
    destination: "180 8th Line South Oro-Medonte, Ontario",  available_seats: 2, user_id: 25)
