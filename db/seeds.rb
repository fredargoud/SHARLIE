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


space1 = Space.create!(owner: paul, title: 'Appartement de Paul', description: 'Appartment, Lyon 1', image: 'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fbaf60783e07f7b6bff745cc88da064a&auto=format&fit=crop&w=600&q=60')
space2 = Space.create!(owner: sylvain, title: 'Appartement de Sylvain', description: 'Appartment, Lyon 2', image: 'https://images.unsplash.com/photo-1513694203232-719a280e022f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ee7b83f80f90879486ced1b45501ce21&auto=format&fit=crop&w=600&q=60')
space3 = Space.create!(owner: julien, title: 'Appartement de Julien', description: 'Appartment, Lyon 3', image: 'https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b28e42e1dd19f807e6262ed37bb3e751&auto=format&fit=crop&w=600&q=60')
space4 = Space.create!(owner: fred, title: 'Appartement de Fred', description: 'Appartment, Lyon 4', image: 'https://images.unsplash.com/photo-1518481852452-9415b262eba4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=682a7e2a70ae366b3610b014f5bb5a97&auto=format&fit=crop&w=600&q=60')
space5 = Space.create!(owner: greg, title: 'Appartement de Greg', description: 'Appartment, Lyon 5', image: 'https://images.unsplash.com/photo-1518136247453-74e7b5265980?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=34d312abe67f954c279f1f244ce73963&auto=format&fit=crop&w=600&q=60')
space6 = Space.create!(owner: phil, title: 'Appartement de Phil', description: 'Appartment, Lyon 6', image: 'https://images.unsplash.com/photo-1488805990569-3c9e1d76d51c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=52ab20c13e8729e918954bede90d8d8a&auto=format&fit=crop&w=600&q=60')
space7 = Space.create!(owner: christy, title: 'Appartement de Christy', description: 'Appartment, Lyon 7', image: 'https://images.unsplash.com/photo-1517502884422-41eaead166d4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3d8f17ce21e419f0ef0e90dfcbe19911&auto=format&fit=crop&w=600&q=60')
space8 = Space.create!(owner: paul, title: 'Appartement de Paul', description: 'Appartment, Lyon 8', image: 'https://images.unsplash.com/photo-1502672023488-70e25813eb80?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4f890a0c2f29ada0a8dfc182dbfc0912&auto=format&fit=crop&w=600&q=60')
space9 = Space.create!(owner: christy, title: 'Appartement de Christy', description: 'Appartment, Lyon 8', image: 'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a3a5e87267175e106954c7e76bd968b9&auto=format&fit=crop&w=600&q=60')


bookingA = Booking.create!(mate: julien, space: space1)
bookingB = Booking.create!(mate: fred, space: space1)
bookingC = Booking.create!(mate: toto, space: space2)
bookingD = Booking.create!(mate: phil, space: space3)
bookingE = Booking.create!(mate: greg, space: space4)
bookingF = Booking.create!(mate: christy, space: space6)



