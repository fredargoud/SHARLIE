# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Space.destroy_all
Booking.destroy_all


paul = User.create(email: 'paul@lewagon.com', encrypted_password: 'azerty')
sylvain = User.create(email: 'sylvain@lewagon.com', encrypted_password: 'azerty')
julien = User.create(email: 'julien@lewagon.com', encrypted_password: 'azerty')
fred = User.create(email: 'fred@lewagon.com', encrypted_password: 'azerty')
toto = User.create(email: 'toto@lewagon.com', encrypted_password: 'azerty')

space1 = Space.create(owner_id: 1)
space2 = Space.create(owner_id: 2)


bookingA = Booking.create(mate_id: 4, space_id: 1)
bookingB = Booking.create(mate_id: 5, space_id: 1)
bookingC = Booking.create(mate_id: 3, space_id: 2)




