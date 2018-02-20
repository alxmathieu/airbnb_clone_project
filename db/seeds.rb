# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
User.destroy_all
Performance.destroy_all


user1 = user.create!(username: "Maximilien", avatar:"http://bit.ly/2EF3rJz", is_artist: true, photo: "http://bit.ly/2ojAA2x",location: "New York", bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.")
user2 = user.create!(username: "Tanguy", avatar:"http://bit.ly/2Hx6P7l", is_artist: true, photo: "http://bit.ly/2EFWJmR" location: "Paris", bio:  "ConsecteturLorem ipsum dolor sit amet, adipisicing elit.")
user3 = user.create!(username: "Airpod", avatar:"http://bit.ly/2C9aBEq", is_artist: false, location: "l'Eldorado", bio: "Adipisicing lorem ipsum dolor sit amet, consectetur elit.")

performance1 = performance.create!(description: "Wall painting", price: "200$", description: "aliquid quaerat quibusdam.", user: user1)
performance2 = performance.create!(description: "door painting", price: "100$", description: " quaerat aliquid quibusdam.", user: user2)
performance3 = performance.create!(description: "ceiling painting", price: "300$", description: "quibusdam aliquid quaerat .", user: user1)


















