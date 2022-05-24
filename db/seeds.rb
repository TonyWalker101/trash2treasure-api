require 'faker'
require 'http'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Data ..."

# Users

puts "Creating users ..."
User.destroy_all

user1 = User.create!(user_name: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: Faker::Internet.password, location: Faker::Address.full_address)
user2 = User.create!(user_name: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: Faker::Internet.password, location: Faker::Address.full_address)
user3 = User.create!(user_name: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: Faker::Internet.password, location: Faker::Address.full_address)
user4 = User.create!(user_name: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: Faker::Internet.password, location: Faker::Address.full_address)
user5 = User.create!(user_name: Faker::Internet.unique.username, email: Faker::Internet.unique.email, password: Faker::Internet.password, location: Faker::Address.full_address)

users = [user1, user2, user3, user4, user5]

# Donations
puts "Creating donations ..."
Donation.destroy_all

def generate_toronto_coordinates
  [rand(43.64248..43.83201), rand(-79.609698..-79.386567)]
end

def generate_vancouver_coordinates
  [rand(49.190647..49.213244), rand(-123.199614..-122.899316)]
end

products = (HTTP.get("https://fakestoreapi.com/products")).parse
conditions = ["Like New", "Good", "Acceptable", "Broken"]

20.times do |index|
  users[rand(0..4)].donations.create!(
    name: products[index]['title'], 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: products[index]['image'],
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
  )
end

users[rand(0..4)].donations.create!(
    name: "Seville Tower Fan", 
    location: Faker::Address.street_address, 
    description: "Free Tower Fan! Still works - no need for it anymore.",
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://drive.google.com/file/d/14Upf2PBlQwU1AJWO5GhUp6UVwOoI1JXb/view?usp=sharing",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)

users[rand(0..4)].donations.create!(
    name: "Beige Couch", 
    location: Faker::Address.street_address, 
    description: "Well worn couch - up for grabs!",
    condition: conditions[3],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)

# Comments
puts "Creating comments"
Comment.destroy_all

60.times do |index|
  users[rand(0..4)].comments.create!(
    donation_id: rand(1..20),
    comment: Faker::Lorem.sentence,
    created_at: Faker::Time.backward(days: 2)
  )
end

puts "Done seeding!"