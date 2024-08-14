require 'faker'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
Restaurant.destroy_all
200.times do
  new_restaurant = Restaurant.create!( name: Faker::Name.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number , category:  ["chinese", "italian", "japanese", "french", "belgian"].sample )
  Review.create!(content: Faker::Restaurant.review , rating: rand(0..5), restaurant_id: new_restaurant.id)
end