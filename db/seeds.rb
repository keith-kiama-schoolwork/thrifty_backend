# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = ["Electronics","Video Games","Women's Fashion","Men's Fashion", "Books","Luggage","Video Games"]
puts "seeding...🪴🪴"

# users seed data
User.create(name: "John Doe", email: "john@example.com", password: "password123")
User.create(name: "Jane Doe", email: "jane@example.com", password: "password456")

# accounts seed data
Account.create(account_number: "1234567890", user_id: "1")
Account.create(account_number: "0987654321", user_id: "2")

# products seed data
Product.create(image_url: "https://example.com/image1.png", name: "Product 1", price: "10.00", category: categories.sample)
Product.create(image_url: "https://example.com/image2.png", name: "Product 2", price: "20.00", category: categories.sample)

puts "DOne seeding...🌳🌳"
