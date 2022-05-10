require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do |i|
  User.create!(user_name: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: Faker::Internet.password, location: Faker::Address.full_address)
end

def generate_toronto_coordinates do
  output = []

  output.push(rand(43.64248..43.83201))
  output.push(rand(-79.609698..-79.386567))

  output
end

10.times