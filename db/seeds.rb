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

sport1 = Sport.create!(name: 'Basketball', teams: 'Los Angeles Lakers', user: user1)
sport2 = Sport.create!(name: 'Football', teams: 'FC Barcelone', user: user2)

puts "Creating sports ..."

player1 = Player.create!(size: 10, height: 200, position: "Guard", name: "LeBron James", sport: sport1, user: user1)
player2 = Player.create!(size: 9, height: 190, position: "Forward", name: "Anthony Davis", sport: sport1, user: user1)
player3 = Player.create!(size: 8, height: 185, position: "Guard", name: "Russell Westbrook", sport: sport1, user: user1)

puts "Creating players..."
