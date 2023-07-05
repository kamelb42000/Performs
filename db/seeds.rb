# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(email: 'kamel.b@gmail.com', password: 'password')
user2 = User.create!(email: 'messi.b@gmail.com', password: 'password')

puts "Creating users ..."

sport1 = Sport.create!(name: 'Basketball', players: 'LeBron James, Anthony Davis, Russell Westbrook', teams: 'Los Angeles Lakers', user: user1)
sport2 = Sport.create!(name: 'Football', players: 'Lionel Messi, Gerard Piqué, Sergio Busquets', teams: 'FC Barcelone', user: user2)

puts "Creating sports ..."
