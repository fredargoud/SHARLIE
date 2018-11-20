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

space1 = Space.create!(owner: paul, description: 'Location d\'une semaine dans le coeur de Lyon')
space2 = Space.create!(owner: sylvain, description: 'Location d\'une semaine dans le coeur de Lyon')
space3 = Space.create!(owner: julien, description: "Location de deux semaines dans un loft à deux pas des terreaux")


bookingA = Booking.create!(mate: julien, space: space1)
bookingB = Booking.create!(mate: fred, space: space1)
bookingC = Booking.create!(mate: toto, space: space2)




