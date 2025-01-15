# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

require 'faker'

puts "Cleaning the DB..."

Dance.destroy_all
Profile.destroy_all
User.destroy_all

puts "Creating Users..."

20.times do
  User.create!(
    email: Faker::Internet.email,
    password: 'password',
    name: Faker::Name.name,
    age: rand(18..70),
    gender: ['Male', 'Female', 'Non-Binary'].sample,
    location: Faker::Address.city,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 70),
    dance_style: ['Salsa', 'Hip-Hop', 'Ballet', 'Swing', 'Tango', 'Waltz', 'Contemporary'].sample,
    bio: Faker::Lorem.sentence(word_count: 15),
    location: Faker::Address.city
  )
end
puts "Seeded 20 users!"


Dance.create!(name: 'Salsa', description: 'A popular Latin dance known for its vibrant energy.')
Dance.create!(name: 'Ballet', description: 'A highly technical form of dance that originated in the Italian Renaissance.')
Dance.create!(name: 'Hip-Hop', description: 'A dynamic street dance style that includes breaking, locking, and popping.')
Dance.create!(name: 'Tango', description: 'An Argentine dance characterized by dramatic poses and sharp movements.')
Dance.create!(name: 'Waltz', description: 'A ballroom dance in 3/4 time, often associated with elegance and grace.')

puts "Seeded dances!"
