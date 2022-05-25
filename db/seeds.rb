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
  [rand(49.129527..49.273097), rand(-123.244367..-122.738665)]
end

conditions = ["Like New", "Good", "Acceptable", "Broken"]

users[rand(0..4)].donations.create!(
    name: "Hot Tub", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424629/seeds/washing-machine-white-color-americanlisted_50936873_afbggm.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Miscellaneous DVDs", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424631/seeds/0AA989BF-6ACE-4A16-9669-69ADB1CA32A4_1_105_c_skpdez.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Vintage Freezer Door", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424631/seeds/9B17B78C-F06A-4F80-92B3-3047B9EAD9D2_1_105_c_a7imrq.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Well-Loved Couch", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424630/seeds/60CE6F6E-69B1-4512-80F4-1B4CC0FEE6DB_1_105_c_tlzrqo.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Women's Shoes + Wine Rack", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424631/seeds/290EC31C-BA57-40CD-BA65-C01EBCB33A7D_1_105_c_slqshu.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Custom Mahogany Shelf", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424631/seeds/D2341B7D-A8F2-45F8-A9BD-EFB0CEBE9A37_1_102_o_wepo2c.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Baby Thermos", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424631/seeds/37810145-D76C-4B64-A67F-62E06E9F69A1_1_105_c_x8dyr0.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Four Drawer Ikea Unit", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424629/seeds/A20966B4-CEE6-4CA9-8EE1-C0D65150057E_1_105_c_ehzpdf.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "70's Art Deco Chairs + Coffee Table", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424628/seeds/b8ba68ea80fd7238584aa288d4dc9ad6_y5c3ah.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Nintendo Switch Gameboy", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[0],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424630/seeds/BDF968CD-DBAB-4645-B3DA-BEDF92A3580D_1_105_c_fmsppm.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_toronto_coordinates[0],
    longitude: generate_toronto_coordinates[1]
)

users[rand(0..4)].donations.create!(
    name: "Beige Couch with Detachable Feet - Wow!", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424630/seeds/IMG_7279_lgbero.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "China Cabinet (Doge not included)", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424631/seeds/8310027E-C7A9-4576-AA68-ED0F1CB78DE9_1_105_c_ruesuz.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Locked Filing Cabinet (Key not included)", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424630/seeds/CsDgXWlVUAAuFqI_wqzjbr.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "'Tweed like your Professor's Jacket' Chair", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424630/seeds/CudwRrtVYAEDKU4_hmaua3.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Walmart Billy Bookshelf", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424629/seeds/CsDfA_AVYAAYJW8_n0yvk7.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Itsy Bitsy Teeny Weeny Wooden Table", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653514286/E1235B1B-4594-41FF-8448-063051CA7453_bpj9y0.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Velma Skirt Orange Couch", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424630/seeds/F17DB2AB-75F3-44FE-9235-C43EDE69110C_1_105_c_f087aq.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)
users[rand(0..4)].donations.create!(
    name: "Haunted TV", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424629/seeds/freetv_in8a2l.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)

users[rand(0..4)].donations.create!(
    name: "Big Comfy Couch", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424628/seeds/Couch-at-11th-and-pine-Hood-River_pbxdsx.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)

users[rand(0..4)].donations.create!(
    name: "Free Time Machine!!", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424629/seeds/TimeMachine1_tuwdxc.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)

users[rand(0..4)].donations.create!(
    name: "Danny Duncan Original Dirtbike", 
    location: Faker::Address.street_address, 
    description: Faker::Movie.quote,
    condition: conditions[rand(0..3)],
    available: true,
    image: "https://res.cloudinary.com/djv3yhbok/image/upload/v1653424629/seeds/u7tye3tb16231_wdxip3.jpg",
    created_at: Faker::Time.backward(days: 2),
    latitude: generate_vancouver_coordinates[0],
    longitude: generate_vancouver_coordinates[1]
)

# Comments
puts "Creating comments"
Comment.destroy_all

60.times do |index|
  users[rand(0..4)].comments.create!(
    donation_id: rand(1..21),
    comment: Faker::Quote.yoda,
    created_at: Faker::Time.backward(days: 2)
  )
end

puts "Done seeding!"