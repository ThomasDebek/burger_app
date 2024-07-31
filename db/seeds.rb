# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



Burger.destroy_all
Promotion.destroy_all

# Tworzenie przykładowych burgerów
burger1 = Burger.create!(name: "Classic Burger", description: "A classic burger with lettuce, tomato, and cheese.", price: 10.00)
burger2 = Burger.create!(name: "BBQ Burger", description: "A delicious BBQ burger with bacon and cheese.", price: 12.00)
burger3 = Burger.create!(name: "Veggie Burger", description: "A healthy veggie burger with avocado and spinach.", price: 9.00)

# Tworzenie przykładowych kodów promocyjnych
Promotion.create!(code: "SUMMER20", discount: 2.00, active: true, burger: burger1)
Promotion.create!(code: "BBQLOVE", discount: 3.00, active: true, burger: burger2)
Promotion.create!(code: "VEGGIE10", discount: 1.50, active: true, burger: burger3)

puts "Przykładowe dane zostały załadowane!"