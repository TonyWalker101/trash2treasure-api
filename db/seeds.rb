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

# 20.times do |index|
#   users[rand(0..4)].donations.create!(
#     name: products[index]['title'], 
#     location: Faker::Address.street_address, 
#     description: products[index]['description'],
#     condition: conditions[rand(0..3)],
#     available: true,
#     image: products[index]['image'],
#     created_at: Faker::Time.backward(days: 2),
#     latitude: generate_toronto_coordinates[0],
#     longitude: generate_toronto_coordinates[1]
#   )
# end

users[rand(0..4)].donations.create!(
    name: "Hot Tub", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Miscellaneous DVDs", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Vintage Freezer Door", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Well-Loved Couch", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Women's Shoes + Wine Rack", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Custom Mahogany Shelf", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Baby Thermos", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Four Drawer Ikea Unit", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "70's Art Deco Chairs + Coffee Table", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Nintendo Switch Gameboy", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)

users[rand(0..4)].donations.create!(
    name: "Beige Couch with Detachable Feet - Wow!", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "China Cabinet (Doge not included)", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Locked Filing Cabinet (Key not included)", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "'Tweed like your Professor's Jacket' Chair", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Walmart Billy Bookshelf", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Itsy Bitsy Teeny Weeny Wooden Table", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Velma Skirt Orange Couch", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Haunted TV", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)

users[rand(0..4)].donations.create!(
    name: "Big Comfy Couch", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)

users[rand(0..4)].donations.create!(
    name: "Free Time Machine!!", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
    available: true,
    image: "",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)

users[rand(0..4)].donations.create!(
    name: "Danny Duncan Original Dirtbike", 
    location: Faker::Address.street_address, 
    description: products[index]['description'],
    condition: conditions[rand(0..3)],
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