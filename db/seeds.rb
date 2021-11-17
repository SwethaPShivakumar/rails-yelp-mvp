# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# puts "Cleaning database..."
# Restaurant.destroy_all

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

la_pampa = Restaurant.new(name: "“LA PAMPA”", category:"italian", address:"“70 Queens Road”")
la_pampa.save!

kesari = Restaurant.new(name: "“Kesari”", category:"french", address:"“55 coles Road”")
kesari.save!

tacobill = Restaurant.new(name: "Tacobill", category:"italian", address:"16 cranberry Road")
tacobill.save!

tour_d_argent = Restaurant.new(name: "La Tour d'Argent", category: "french", address:"70 Queens Road" )
tour_d_argent.save!

tour_d_argentagent = Restaurant.new(name: "La Tour d'Argent agent", category: "french", address:"70 Queens and kings Road" )
tour_d_argentagent.save!

# 5.times do
#   restaurant = Restaurant.new(
#     name:    Faker::Company.name,
#     address: "#{Faker::Address.street_address}",
#     phone_number: Faker::PhoneNumber.phone_number,
#     category: "italian"
#   )
#   restaurant.save!
# end
