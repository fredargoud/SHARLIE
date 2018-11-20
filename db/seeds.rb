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


paul = User.create!(email: 'paul@lewagon.com', password: 'azerty')
sylvain = User.create!(email: 'sylvain@lewagon.com', password: 'azerty')
julien = User.create!(email: 'julien@lewagon.com', password: 'azerty')
fred = User.create!(email: 'fred@lewagon.com', password: 'azerty')
toto = User.create!(email: 'toto@lewagon.com', password: 'azerty')
greg = User.create!(email: 'greg@lewagon.com', password: 'azerty')
phil = User.create!(email: 'phil@lewagon.com', password: 'azerty')
quentin = User.create!(email: 'quentin@lewagon.com', password: 'azerty')
christy = User.create!(email: 'christy@lewagon.com', password: 'azerty')

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



