# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

transport_modes = [
  ["Road"],
  ["Air"]
]

company_lists = [
  ["VIP", 1],
  ["VVIP", 1],
  ["O.A Travel", 1],
  ["InterCity STC", 1],
  ["City Link", 2],
  ["Antrak Air", 2],
  ["StarBow", 2],
  ["InterCity STC", 1]  
]

from_destinations = [
  ["Accra"],
  ["Kumasi"]
]

to_destinations = [
  ["Accra"],
  ["Kumasi"]
]

destinations = [
  [1, 1, 2, "25",],
  [1, 2, 1, "25"]
]

transport_modes.each do |transport_mode|
  name = transport_mode[0]
  TransportMode.find_or_create_by_name(name: name)
end

from_destinations.each do |from_destination|
  name = from_destination[0]
  FromDestination.find_or_create_by_name(name: name)
end

to_destinations.each do |to_destination|
  name = to_destination[0]
  ToDestination.find_or_create_by_name(name: name)
end

company_lists.each do |name, transportMode_id|
  CompanyName.find_or_create_by_name( name: name, TransportMode_id: transportMode_id )
end

Destination.delete_all
destinations.each do |companyname, from, to, price|
  Destination.create(CompanyName_id: companyname, FromDestination_id: from, ToDestination_id: to, price:price)
end
