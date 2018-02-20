# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'

Performance.destroy_all
Booking.destroy_all
User.destroy_all


user1 = User.create!(username: "Maximilien", avatar:"http://bit.ly/2EF3rJz", email: "email@email.com", password: "123456", is_artist: true, photos: ["http://bit.ly/2ojAA2x"],location: "New York", bio: "Lorem ipsum dolor sit amet, consectetur adipisicing elit.")
user2 = User.create!(username: "Tanguy", avatar:"http://bit.ly/2Hx6P7l", email: "email2@email.com", password: "123456",  is_artist: true, photos: ["http://bit.ly/2EFWJmR"], location: "Paris", bio:  "ConsecteturLorem ipsum dolor sit amet, adipisicing elit.")
user3 = User.create!(username: "Airpod", avatar:"http://bit.ly/2C9aBEq", email: "email3@email.com", password: "123456",  is_artist: false, location: "l'Eldorado", bio: "Adipisicing lorem ipsum dolor sit amet, consectetur elit.")
user4 = User.create!(username: "Alexis", avatar:"http://bit.ly/2Cx5NV6", email: "email4@email.com", password: "123456",  is_artist: true, photos: ["http://bit.ly/2HsZ3LH"], location: "Paris", bio: " ipsum Adipisicing lorem dolor sit amet, consectetur elit.")
user5 = User.create!(username: "Hugo", avatar:"http://bit.ly/2CdjigW", email: "email5@email.com", password: "123456",  is_artist: true, photos: ["http://bit.ly/2EPxfTl"], location: "Paris", bio: "Sit Adipisicing lorem ipsum dolor amet, consectetur elit.")
user6 = User.create!(username: "Benoit", avatar:"http://bit.ly/2BGEKKl", email: "email6@email.com", password: "123456",  is_artist: true, photos: ["http://bit.ly/2CztPi9"], location: "Paris", bio: "Dolor Adipisicing lorem ipsum sit amet, consectetur elit.")
user6 = User.create!(username: "Alexandre", avatar:"http://bit.ly/2sGx33D", email: "email7@email.com", password: "123456",  is_artist: true, photos: ["http://bit.ly/2EATRmX"], location: "Paris", bio: "Consectetur Dolor Adipisicing lorem ipsum sit amet, elit.")


performance1 = Performance.create!(description: "Wall painting", price: 200, user_id: user1.id)
performance2 = Performance.create!(description: "door painting", price: 100, user_id: user2.id)
performance3 = Performance.create!(description: "ceiling painting", price: 300, user_id: user1.id)


booking1 = Booking.create!(performance_id: performance1.id, user_id: user1.id, date: "28/03/2018", location: "Paris", work_asked: "Paint a reindeer", status: "Accepted")
booking2 = Booking.create!(performance_id: performance2.id, user_id: user3.id, date: "19/03/2018", location: "London", work_asked: "Paint me like one of your French girl", status: "Declined")
booking3 = Booking.create!(performance_id: performance3.id, user_id: user2.id, date: "28/05/2019", location: "Beijing", work_asked: "Paint a boat", status: "Pending")

#SEED Alexis
# performance1 = Performance.create!(description: "Wall painting", price: 200, user_id: 2)
# performance2 = Performance.create!(description: "Door painting", price: 100, user_id: 2)
# performance3 = Performance.create!(description: "ceiling painting", price: 300, user_id: user1.id)
