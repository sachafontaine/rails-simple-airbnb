# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Flat.destroy_all

10.times do
  Flat.create!(
    name: Faker::Commerce.brand,
    address: Faker::Address.full_address,
    description: Faker::ChuckNorris.fact,
    price_per_night: rand(30..100),
    number_of_guests: rand(1..6)
  )
end
