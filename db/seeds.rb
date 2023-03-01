# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.new({ name: "Headphones", price: 50, image_url: "", description: "wireless and waterproof headphones" })
product.save

product = Product.new({ name: "smartwatch", price: 200, image_url: "", description: "applewatch series 3 black" })
product.save
