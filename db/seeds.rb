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


user1 = User.create!(username: "Maximilien", avatar:"http://bit.ly/2EF3rJz", email: "email@email.com", password: "123456", is_artist: true, photos: "http://bit.ly/2ojAA2x",location: "New York", bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.")
user2 = User.create!(username: "Tanguy", avatar:"http://bit.ly/2Hx6P7l", email: "email2@email.com", password: "123456",  is_artist: true, photos: "http://bit.ly/2EFWJmR", location: "Paris", bio:  "ConsecteturLorem ipsum dolor sit amet, adipisicing elit.")
user3 = User.create!(username: "Airpod", avatar:"http://bit.ly/2C9aBEq", email: "email3@email.com", password: "123456",  is_artist: false, location: "l'Eldorado", bio: "Adipisicing lorem ipsum dolor sit amet, consectetur elit.")

performance1 = Performance.create!(description: "Wall painting", price: 200, user_id: user1.id)
performance2 = Performance.create!(description: "door painting", price: 100, user_id: user2.id)
performance3 = Performance.create!(description: "ceiling painting", price: 300, user_id: user1.id)


















