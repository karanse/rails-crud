# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the db..."
Restaurant.destroy_all

puts "Generating sample data ..."
Restaurant.create!(
  name: 'De Pits',
  rating: 3,
  address: 'Ijsbanspaad 9'
)

Restaurant.create!(
  name: 'Pizzaria',
  rating: 5,
  address: 'Centrum'
)

puts "#{Restaurant.count} restaurants created!"
