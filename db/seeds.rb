# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Faker::Address.community
# Faker::Address.street_address
# Faker::Restaurant.review
# price_per_night_selector = [75, 100, 125, 150, 200, 250].sample
# number_of_guests_selector = [1, 2, 3, 4, 5].sample

10.times do
  price_per_night_selector = [75, 100, 125, 150, 200, 250].sample
  number_of_guests_selector = [1, 2, 3, 4, 5].sample
  new_flat = Flat.create!(name: Faker::Address.community, address: Faker::Address.street_address, description: Faker::Restaurant.review, price_per_night: price_per_night_selector, number_of_guests: number_of_guests_selector)
  puts "Created #{new_flat.name}"
end

# Flat.create!(
#   name: 'Light & Spacious Garden Flat London',
#   address: '10 Clifton Gardens London W9 1DT',
#   description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
#   price_per_night: 75,
#   number_of_guests: 3
# )
