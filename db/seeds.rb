# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Emptying database'
Restaurant.destroy_all

# Faker::Name.name

# 5.times do |n|
#   restaurant = Restaurant.new(name: n.to_s, category: Restaurant::CATEGORIES.sample, phone_number: "99898-345#{[1..10].sample}", address: "Rua X nº#{n}")
#   restaurant.save
# end

puts 'Seeding your database'
5.times do
  Restaurant.create!(
    address: Faker::Address.street_address,
    name: Faker::Restaurant.name,
    category: Restaurant::CATEGORIES.sample,
    phone_number: Faker::PhoneNumber.cell_phone
  )
end

puts 'Finished'
