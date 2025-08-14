# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts 'Cleaning database...'
Flat.destroy_all

# 2. Create the instances 🏗️
puts 'Creating flats...'
Flat.create!(name: 'Flat 1', address: '7 Boundary St, London E2 7JE', description: 'Some description',
             price_per_night: 150, number_of_guests: 3)
puts 'Flat 1'
Flat.create!(name: 'Flat 2', address: '56A Shoreditch High St, London E1 6PQ', description: 'Some description',
             price_per_night: 150, number_of_guests: 3)
puts 'Flat 2'
Flat.create!(name: 'Flat 3', address: '7 Boundary St, London E2 7JE', description: 'Some description',
             price_per_night: 150, number_of_guests: 3)
puts 'Flat 3'
Flat.create!(name: 'Flat 4', address: '56A Shoreditch High St, London E1 6PQ', description: 'Some description',
             price_per_night: 150, number_of_guests: 3)
puts 'Flat 4'

# 3. Display a message 🎉
puts "Finished! Created #{Flat.count} flats."
