# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Apartment.destroy_all
User.destroy_all

user1 = User.create!(email:"Jack@gmail.com", password:"password")

apartment1 = Apartment.create!(title: "Bien centré", address: "20 rue des capucins", price: 23, description: "2 chambres", user: user1)

puts "Seed is fucking working"
