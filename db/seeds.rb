# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Space.destroy_all
User.destroy_all


paul = User.create!(first_name: 'Paul', last_name: 'De Castelbajac', email: 'paul@lewagon.com', password: 'azerty', image: 'https://avatars0.githubusercontent.com/u/36788687?v=4')
sylvain = User.create!(first_name: 'Sylvain', last_name: 'Tersoglio', email: 'sylvain@lewagon.com', password: 'azerty', image: 'https://avatars0.githubusercontent.com/u/43859719?v=4')
julien = User.create!(first_name: 'Julien', last_name: 'Santucci', email: 'julien@lewagon.com', password: 'azerty', image: 'https://avatars2.githubusercontent.com/u/43654668?v=4')
fred = User.create!(first_name: 'Fred', last_name: 'Argoud', email: 'fred@lewagon.com', password: 'azerty', image: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/e3tksw9dvab8zrixxlld.jpg')
toto = User.create!(first_name: 'Toto', last_name: 'Tata', email: 'toto@lewagon.com', password: 'azerty', image: 'https://avatars0.githubusercontent.com/u/43747777?v=4')
greg = User.create!(first_name: 'Greg', last_name: 'Dief', email: 'greg@lewagon.com', password: 'azerty', image: 'https://avatars3.githubusercontent.com/u/43754546?v=4')
phil = User.create!(first_name: 'Phil', last_name: 'Morfin', email: 'phil@lewagon.com', password: 'azerty', image: 'https://avatars0.githubusercontent.com/u/16327734?v=4')
quentin = User.create!(first_name: 'Quentin', last_name: 'Riviere', email: 'quentin@lewagon.com', password: 'azerty', image: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/oo2v1bw5swff4snvrhdb.jpg')
christy = User.create!(first_name: 'Christy', last_name: 'Valette', email: 'christy@lewagon.com', password: 'azerty', image: 'https://avatars2.githubusercontent.com/u/22522493?v=4')


space1 = Space.create!(owner: paul, title: 'Appartement de Paul', description: 'Appartment, Lyon 1')
space2 = Space.create!(owner: sylvain, title: 'Appartement de Sylvain', description: 'Appartment, Lyon 2')
space3 = Space.create!(owner: julien, title: 'Appartement de Julien', description: 'Appartment, Lyon 3')
space4 = Space.create!(owner: fred, title: 'Appartement de Fred', description: 'Appartment, Lyon 4')
space5 = Space.create!(owner: greg, title: 'Appartement de Greg', description: 'Appartment, Lyon 5')
space6 = Space.create!(owner: phil, title: 'Appartement de Phil', description: 'Appartment, Lyon 6')
space7 = Space.create!(owner: christy, title: 'Appartement de Christy', description: 'Appartment, Lyon 7')


bookingA = Booking.create!(mate: julien, space: space1)
bookingB = Booking.create!(mate: fred, space: space1)
bookingC = Booking.create!(mate: toto, space: space2)
bookingD = Booking.create!(mate: phil, space: space3)
bookingE = Booking.create!(mate: greg, space: space4)
bookingF = Booking.create!(mate: christy, space: space6)



