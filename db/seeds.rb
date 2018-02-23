# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts 'Cleaning models...'
  Booking.destroy_all
  Photo.destroy_all
  Performance.destroy_all
  User.destroy_all
puts 'Done!'

puts "Creating 7 Users..."
  user1 = User.create!(username: "Maximilien", avatar:"http://bit.ly/2EF3rJz", email: "maximilien@email.com", password: "123456", is_artist: true, location: "New York", bio: "An artwork can be accommodated in an interior wall, in the living room, bedroom, kitchen or in a studio and showroom. The service of indoor artwork extends to both private clients, companies and public organizations.")
  user2 = User.create!(username: "Tanguy", avatar:"http://bit.ly/2Hx6P7l", email: "tanguy@email.com", password: "123456",  is_artist: true, location: "Rennes", bio:  "Drawing and painting on walls. Interior and exterior spaces. Colorful or monotone, aerosol, acrylic paint and/ or brush work. Artistic approach, client-request oriented and several years of experience.")
  user3 = User.create!(username: "Edouard", avatar:"http://bit.ly/2Cbw8MQ", email: "edouard@lewagon.com", password: "123456",  is_artist: false, location: "Paris")
  user4 = User.create!(username: "Alexis", avatar:"http://bit.ly/2Cx5NV6", email: "alexis@email.com", password: "123456",  is_artist: true, location: "Berlin", bio: "The process for painting on walls is very similar to painting canvases , except there is obviously a difference in scale. I have painted walls for bars, clubs, Cafe's, shop shutters, public spaces and corporate events. This is a great way of brightening up a work space and adding more colour or vibrance to a blank wall.")
  user5 = User.create!(username: "Hugo", avatar:"http://bit.ly/2CdjigW", email: "hugo@email.com", password: "123456",  is_artist: true, location: "Paris", bio: "I do free and commissioned artworks. For clubs, festivals, events, restaurants, products etc. Indoor and outdoor - no problem. Any size is possible!")
  user6 = User.create!(username: "Benoit", avatar:"http://bit.ly/2BGEKKl", email: "benoit@email.com", password: "123456",  is_artist: true, location: "New York", bio: "BustArt paints a unique mix of graffiti techniques, lettering and pop-comics styles. He is specialized in stencils, lettering, portraits, markers, spray can and freehand painting.")
  user7 = User.create!(username: "Alexandre", avatar:"http://bit.ly/2sGx33D", email: "Alexandre@email.com", password: "123456",  is_artist: true, location: "Paris", bio: "Acrylics | Spray Paint | Markers | Stencils. Offering worldwide mural and object paintings on literally every paintable surface. Walls, cars, skateboards, shoes, clothes, vinyltoys, unicorns – you name it. Interior and exterior. From concept to sketch to the final painting.")
puts "Done!"

puts "Creating 8 Photos"
photo1 = Photo.create!(artist_photo: open("http://bit.ly/2EOKyQt"), user: user7)
photo2 = Photo.create!(artist_photo: open("http://bit.ly/2orH5AA"), user: user7)
photo3 = Photo.create!(artist_photo: open("http://bit.ly/2ER57vu"), user: user7)
photo4 = Photo.create!(artist_photo: open("http://bit.ly/2HEdKeO"), user: user6)
photo5 = Photo.create!(artist_photo: open("http://bit.ly/2FoB5R2"), user: user6)
photo6 = Photo.create!(artist_photo: open("http://bit.ly/2EMGzYV"), user: user6)
photo7 = Photo.create!(artist_photo: open("http://bit.ly/2orItmM"), user: user5)
photo8 = Photo.create!(artist_photo: open("http://bit.ly/2CDphrg"), user: user5)
photo9 = Photo.create!(artist_photo: open("http://bit.ly/2sM0PnV"), user: user5)
photo10 = Photo.create!(artist_photo: open("http://bit.ly/2BLetuc"), user: user4)
photo11 = Photo.create!(artist_photo: open("http://bit.ly/2GFRyjo"), user: user4)
photo12 = Photo.create!(artist_photo: open("http://bit.ly/2CDgGor"), user: user4)
photo13 = Photo.create!(artist_photo: open("http://bit.ly/2F2Wa5E"), user: user2)
photo14 = Photo.create!(artist_photo: open("http://bit.ly/2BLJHS4"), user: user2)
photo15 = Photo.create!(artist_photo: open("http://bit.ly/2BLO8fG"), user: user2)
photo16 = Photo.create!(artist_photo: open("http://bit.ly/2oomYUo"), user: user1)
photo17 = Photo.create!(artist_photo: open("http://bit.ly/2Cf3WIW"), user: user1)
photo18 = Photo.create!(artist_photo: open("http://bit.ly/2EP3gHK"), user: user1)





puts "Done!"

puts "Creating 3 Performances..."
  performance1 = Performance.create!(description: "Wall painting", price: 200, user_id: user1.id)
  performance2 = Performance.create!(description: "Door painting", price: 100, user_id: user1.id)
  performance3 = Performance.create!(description: "Ceiling painting", price: 300, user_id: user2.id)
  performance4 = Performance.create!(description: "Wall painting", price: 200, user_id: user2.id)
  performance5 = Performance.create!(description: "Door painting", price: 100, user_id: user2.id)
  performance6 = Performance.create!(description: "Ceiling painting", price: 300, user_id: user4.id)
  performance7 = Performance.create!(description: "Wall painting", price: 200, user_id: user4.id)
  performance8 = Performance.create!(description: "Door painting", price: 100, user_id: user5.id)
  performance9 = Performance.create!(description: "Ceiling painting", price: 300, user_id: user5.id)
  performance10 = Performance.create!(description: "Wall painting", price: 200, user_id: user5.id)
  performance11 = Performance.create!(description: "Door painting", price: 100, user_id: user6.id)
  performance12= Performance.create!(description: "Ceiling painting", price: 300, user_id: user6.id)
  performance13= Performance.create!(description: "Wall painting", price: 200, user_id: user7.id)
  performance14= Performance.create!(description: "Door painting", price: 100, user_id: user7.id)
  performance15 = Performance.create!(description: "Ceiling painting", price: 300, user_id: user7.id)
puts "Done!"

puts "Creating 3 bookings..."
  booking1 = Booking.create!(performance_id: performance1.id, user_id: user1.id, date: "28/03/2018", location: "Paris", work_asked: "Paint me a sheep please", status: "Accepted")
  booking2 = Booking.create!(performance_id: performance2.id, user_id: user1.id, date: "19/03/2018", location: "Beijing", work_asked: "Paint me like one of your French girl", status: "Declined")
  booking3 = Booking.create!(performance_id: performance3.id, user_id: user2.id, date: "28/05/2019", location: "London", work_asked: "Paint me a boat")
  booking4 = Booking.create!(performance_id: performance4.id, user_id: user2.id, date: "28/03/2018", location: "Paris", work_asked: "Paint me a fox please", status: "Accepted")
  booking5 = Booking.create!(performance_id: performance5.id, user_id: user4.id, date: "19/03/2018", location: "Berlin", work_asked: "Paint me like one of your French girl", status: "Declined")
  booking6 = Booking.create!(performance_id: performance6.id, user_id: user4.id, date: "28/05/2019", location: "Rennes", work_asked: "Paint a boat")
  booking7 = Booking.create!(performance_id: performance7.id, user_id: user5.id, date: "28/03/2018", location: "Paris", work_asked: "Paint a reindeer please", status: "Accepted")
  booking8 = Booking.create!(performance_id: performance8.id, user_id: user6.id, date: "19/03/2018", location: "London", work_asked: "Paint me like one of your French girl", status: "Declined")
  booking9 = Booking.create!(performance_id: performance9.id, user_id: user6.id, date: "28/05/2019", location: "Rennes", work_asked: "Paint me a pig")
  booking10 = Booking.create!(performance_id: performance10.id, user_id: user7.id, date: "28/03/2018", location: "Paris", work_asked: "Paint a chicken", status: "Accepted")
  booking11 = Booking.create!(performance_id: performance11.id, user_id: user1.id, date: "19/03/2018", location: "London", work_asked: "Paint me a beautiful blue sky", status: "Declined")
  booking12 = Booking.create!(performance_id: performance12.id, user_id: user2.id, date: "28/05/2019", location: "Rennes", work_asked: "Paint a boat")
  booking13 = Booking.create!(performance_id: performance13.id, user_id: user4.id, date: "28/03/2018", location: "Paris", work_asked: "Paint a blue reindeer", status: "Accepted")
  booking14 = Booking.create!(performance_id: performance14.id, user_id: user5.id, date: "19/03/2018", location: "London", work_asked: "Paint me a pink dolphin", status: "Declined")
  booking15 = Booking.create!(performance_id: performance15.id, user_id: user6.id, date: "19/03/2018", location: "Berlin", work_asked: "Paint me a green squirrel on a cat please", status: "Declined")


#SEED Alexis
# performance1 = Performance.create!(description: "Wall painting", price: 200, user_id: 2)
# performance2 = Performance.create!(description: "Door painting", price: 100, user_id: 2)
# performance3 = Performance.create!(description: "ceiling painting", price: 300, user_id: user1.id)

