# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

categories = ["Electronics","Video Games","Women's Fashion","Men's Fashion", "Books","Luggage","Video Games","Kitchen","Movies"]
puts "seeding...🪴🪴"

# users seed data
User.create(name: "John Constantine", email: "john@example.com",image_url: "https://media.istockphoto.com/id/1354898581/photo/shot-of-a-young-businessman-using-a-laptop-in-a-modern-office.jpg?b=1&s=170667a&w=0&k=20&c=TH7fxRJwwlUKThNim9J9xYwH3j_Ih8m3WPTSew-Xaw4=", password: "password123")
User.create(name: "Mitchelle Bronx", email: "jane@example.com",image_url: "https://media.istockphoto.com/id/1413765605/photo/portrait-of-successful-african-american-business-woman.jpg?b=1&s=170667a&w=0&k=20&c=gnlreVlTjr7AM4oug7TBr55S6hTwhXOHE_jaS6DmE2Q=", password: "password456")
User.create(name: "Troy Baker", email: "troye@example.com",image_url: "https://media.istockphoto.com/id/1419898772/photo/confident-business-man-standing-with-arms-crossed-in-an-office-looking-proud-and-happy-alone.jpg?b=1&s=170667a&w=0&k=20&c=V-rhe77lW4iIi-NgzKVSYyk9Mn5D6ZXKi1xt38b-yz0=", password: "password789")

# accounts seed data
Account.create(account_number: "1234567890", user_id: "1")
Account.create(account_number: "0987654321", user_id: "2")

# products seed data
Product.create(image_url: "https://i0.wp.com/www.pricepoint.co.ke/wp-content/uploads/2021/06/Apple-iPhone-14-purple.jpg?fit=800%2C800&ssl=1", name: "iPhone 14", price: "10.00", category: "Electronics")
Product.create(image_url: "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81+d6eSA0eL._UL1500_.jpg", name: "Watch", price: "20.00", category: "Men's Fashion")
Product.create(image_url: "https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGxheXN0YXRpb24lMjA1fGVufDB8fDB8fA%3D%3D&w=1000&q=80", name: "Playstation 5", price: "20.00", category: "Electronics")
Product.create(image_url: "https://cdn.shoplightspeed.com/shops/640947/files/53526889/1024x1024x2/pre-order-the-wisdom-of-the-bullfrog-leadership-ma.jpg", name: "The Wisdom of the Bullfrog", price: "20.00", category: "Books")
Product.create(image_url: "https://media.istockphoto.com/id/1156089632/photo/travel-suitcase.jpg?s=612x612&w=0&k=20&c=1nIDyejODBwRFZZ7F8f5kQLi3odYiPqjpXtO_u9kU6g=", name: "Suitcase", price: "20.00", category: "Luggage")
Product.create(image_url: "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/S/aplus-seller-content-images-us-east-1/A21TJRUUN4KGV/AD0Z2WNQKXLDT/3d86b68d-f98c-49d3-b78b-66d513f37a8d._CR0,0,300,400_PT0_SX300__.jpg", name: "Dress", price: "20.00", category: "Women's Fashion")
Product.create(image_url: "https://www.cnet.com/a/img/resize/200e0bbe8cc1b4698f9d3e9d18e7ac62a16b8230/hub/2021/10/24/5b528542-de0d-4d09-a115-2c26077d58f2/apple-airpods-3-city-backdrop-1.jpg?auto=webp&fit=crop&height=900&width=1200", name: "Air Pods", price: "20.00", category: "Electronic")
Product.create(image_url: "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71BD8pSLA4L._SX522_.jpg", name: "Finish Dual Action Dishwasher Cleaner", price: "20.00", category: "Kitchen")
Product.create(image_url: "https://cdn.hmv.com/r/w-640/hmv/files/9b/9b476974-1c2a-47fa-88ab-9d79e8126800.jpg", name: "The Godfather Trilogy 4K", price: "20.00", category: "Movies")



# product reviews seed data
ProductReview.create(user_id: "1", user_image: User.find(1).image_url,  product_id: 1, comment: "Good Product 1")
ProductReview.create(user_id: "2", user_image: User.find(2).image_url,  product_id: 2, comment: "Good Product 2")

# user reviews seed data
UserReview.create(user_id: "1", comment: "Love this website")
UserReview.create(user_id: "2", comment: "Made my life easier")
UserReview.create(user_id: "3", comment: "Brings so much simplicity to my expenses")

puts "Done seeding...🌳🌳"
