# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destory all
'
Booking.destroy_all
Space.destroy_all
User.destroy_all

puts "Create User"

paul = User.create!(first_name: 'Paul', last_name: 'De Castelbajac', email: 'paul@lewagon.com', password: 'azerty', image: 'https://avatars0.githubusercontent.com/u/36788687?v=4')
sylvain = User.create!(first_name: 'Sylvain', last_name: 'Tersoglio', email: 'sylvain@lewagon.com', password: 'azerty', image: 'https://avatars0.githubusercontent.com/u/43859719?v=4')
julien = User.create!(first_name: 'Julien', last_name: 'Santucci', email: 'julien@lewagon.com', password: 'azerty', image: 'https://avatars2.githubusercontent.com/u/43654668?v=4')
fred = User.create!(first_name: 'Fred', last_name: 'Argoud', email: 'fred@lewagon.com', password: 'azerty', image: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/e3tksw9dvab8zrixxlld.jpg')
toto = User.create!(first_name: 'Toto', last_name: 'Tata', email: 'toto@lewagon.com', password: 'azerty', image: 'https://avatars0.githubusercontent.com/u/43747777?v=4')
greg = User.create!(first_name: 'Greg', last_name: 'Dief', email: 'greg@lewagon.com', password: 'azerty', image: 'https://avatars3.githubusercontent.com/u/43754546?v=4')
phil = User.create!(first_name: 'Phil', last_name: 'Morfin', email: 'phil@lewagon.com', password: 'azerty', image: 'https://avatars0.githubusercontent.com/u/16327734?v=4')
quentin = User.create!(first_name: 'Quentin', last_name: 'Riviere', email: 'quentin@lewagon.com', password: 'azerty', image: 'https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/oo2v1bw5swff4snvrhdb.jpg')
christy = User.create!(first_name: 'Christy', last_name: 'Valette', email: 'christy@lewagon.com', password: 'azerty', image: 'https://avatars2.githubusercontent.com/u/22522493?v=4')

puts "Create Spaces"
space1 = Space.create!(
  owner: paul, title: 'Mini-Loft avec vue Centre Ville',
  address: "10 chemin des mouilles, Ecully",
  description: 'Au coeur de la magnifique capitale des Gaulle, vous apprécierez la vue imprenable sur les berges du Rhone et l\'Hotel Dieu de ce mini loft de haut standing. Cet appartement saura vous séduire par ses volumes, son ambiance cosy et ses équipements.',
  ranking: 3,
  price: 10,
)
url = 'https://images.unsplash.com/photo-1522708323590-d24dbb6b0267?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=fbaf60783e07f7b6bff745cc88da064a&auto=format&fit=crop&w=600&q=60'
space1.remote_image_url = url
space1.save!

space2 = Space.create!(owner: sylvain,
  title: 'Mini-Loft avec vue Berges du Rhône',
  address: "10 rue des capucins, Lyon",
  description: 'Donnant sur les berges du Rhône et l’Hôtel-Dieu, ce mini-loft baigné de lumière a été récemment rénové. Ses beaux volumes et son parquet en bois naturel mettent en valeur son mobilier moderne au design épuré.',
  ranking: 4,
  price: 7,
)
url = 'https://images.unsplash.com/photo-1513694203232-719a280e022f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ee7b83f80f90879486ced1b45501ce21&auto=format&fit=crop&w=600&q=60'
space2.remote_image_url = url
space2.save!


space3 = Space.create!(
  owner: julien,
  title: 'Quai de l\'ancienne Préfecture',
  address: "10 rue de la république, Lyon",
  description: 'L\' appartement vous charmera par son côté chaleureux : poutres apparentes, ambiance cosy, et fonctionnel avec de nombreux équipements. Vous pourrez apprécier le calme de l\'immeuble et la qualité des matériaux choisis pour habiller votre appartement. Cet appartement est climatisé.',
  ranking: 2,
  price: 9,
)
url = 'https://images.unsplash.com/photo-1524758631624-e2822e304c36?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=b28e42e1dd19f807e6262ed37bb3e751&auto=format&fit=crop&w=600&q=60'
space3.remote_image_url = url
space3.save!

space4 = Space.create!(
  owner: fred,
  title: 'au coeur de la presqu\'île',
  address: "10 rue du plat, Lyon",
  description: 'Placé au plein coeur de la presqu\'île, vous aurez accès au Vieux-Lyon, bords de Saône, berges du Rhône, en passant par la Place Bellecour (à 5min) ou Hotel de Ville (2min) en un rien de temps...',
  ranking: 1,
  price: 12,
)
url = 'https://images.unsplash.com/photo-1518481852452-9415b262eba4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=682a7e2a70ae366b3610b014f5bb5a97&auto=format&fit=crop&w=600&q=60'
space4.remote_image_url = url
space4.save!

space5 = Space.create!(
  owner: greg,
  title: 'Appart Lyon 1er,Place des Terreaux',
  address: "Place Bellecour, Lyon",
  description: 'Au cœur du centre ville,notre appartement est lumineux, moderne et fonctionnel . Complètement rénové selon nos gouts il y a moins de 2 ans . Nous l\'avons imaginé accueillant ,chaleureux où chaque hôte doit se sentir "comme à la maison" . Nous avons choisi chacune des parures de lit et le linge de toilette que nous souhaiterions trouver en arrivant dans une location .',
  ranking: 3,
  price: 5,
)
url = 'https://images.unsplash.com/photo-1518136247453-74e7b5265980?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=34d312abe67f954c279f1f244ce73963&auto=format&fit=crop&w=600&q=60'
space5.remote_image_url = url
space5.save!

space6 = Space.create!(
  owner: phil,
  title: 'Studio d\'archi, Rouville, Lyon 1er',
  address: "10 rue Bichat, Lyon",
  description: 'Cet appartement vous séduira en premier lieu par son emplacement. Il est proche du Centre Ville (5 min Place Sathonay, 8 min Place des Terreaux), des Commerces, Musées, Transports, et des bouchons Lyonnais de qualité ! Une fois installé, vous apprécierez Le charme et l\'ambiance chaleureuse, le calme du bas des pentes de la croix rousse, la luminosité amenée par les grandes fenêtres et les pierres apparentes, l\'électroménager de bon standing...',
  ranking: 2,
  price: 6,
)
url = 'https://images.unsplash.com/photo-1488805990569-3c9e1d76d51c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=52ab20c13e8729e918954bede90d8d8a&auto=format&fit=crop&w=600&q=60'
space6.remote_image_url = url
space6.save!

space7 = Space.create!(
  owner: christy,
  title: 'Sur le plateau de la Croix Rousse',
  address: "10 rue de seize, Lyon",
  description: 'Dans appartement de canuts typique au coeur de la Croix Rousse, derrière le marché, à deux pas du métro et des bus, une chambre pour 2 vous attend, accueillante, lumineuse, calme, idéalement située pour découvrir Lyon en toute sérénité.',
  ranking: 4,
  price: 7,
)
url = 'https://images.unsplash.com/photo-1517502884422-41eaead166d4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3d8f17ce21e419f0ef0e90dfcbe19911&auto=format&fit=crop&w=600&q=60'
space7.remote_image_url = url
space7.save!

space8 = Space.create!(
  owner: paul,
  title: 'La Terrasse',
  address: "20 rue Garibaldi, Lyon",
  description: 'La Terrasse est une petite chambre pour 2 personnes, totalement indépendante ouverte sur une très agréable terrasse. Petits déjeuners compris et servis dans la chambre. Parking gratuit. Près de la gare de la Part Dieu, à 10 mn en bus du centre ville.',
  ranking: 3,
  price: 10,
)
url = 'https://images.unsplash.com/photo-1502672023488-70e25813eb80?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=4f890a0c2f29ada0a8dfc182dbfc0912&auto=format&fit=crop&w=600&q=60'
space8.remote_image_url = url
space8.save!

space9 = Space.create!(
  owner: christy,
  title: 'Joli studio meublé au pied du métro',
  address: "10 chemin du Viaduc, Lyon",
  description: 'Entièrement rénové et équipé en plein coeur de Lyon, quartier Garibaldi. Idéalement placé, proche de Place Bellecour (5min en métro), et proche de tous commerces (Monoprix, boulangerie, Centre commercial La Part Dieu). Métro Garibaldi à 2mn à pieds.',
  ranking: 1,
  price: 8,
)
url = 'https://images.unsplash.com/photo-1496664444929-8c75efb9546f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a3a5e87267175e106954c7e76bd968b9&auto=format&fit=crop&w=600&q=60'
space9.remote_image_url = url
space9.save!

space10 = Space.create!(
  owner: paul,
  title: 'Calme en centre ville de Lyon',
  address: "41 quai Pierre Scize, Lyon",
  description: 'Appartment, Lyon 8',
  ranking: 1,
  price: 5,
)
url = 'https://images.unsplash.com/photo-1463797221720-6b07e6426c24?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=3c8c144e8e71f0226b0f87f157ba468a&auto=format&fit=crop&w=1051&q=80'
space10.remote_image_url = url
space10.save!

space11 = Space.create!(
  owner: julien,
  title: 'Un nid avec vue en plein centre !',
  address: "12 Rue d'Aubigny, Lyon",
  description: 'Entre la place des Terreaux et le Vieux Lyon, un appartement sous les toits ambiance duplex idéalement situé au pied des pentes de la Croix Rousse. Rue très calme, belle vue dégagée sur la colline de Fourvière.',
  ranking: 1,
  price: 1,
)
url = 'https://images.unsplash.com/photo-1526308182272-d2fe5e5947d8?ixlib=rb-0.3.5&s=d7f5cc38d669ecdf64e515ec87d722f2&auto=format&fit=crop&w=1050&q=80'
space11.remote_image_url = url
space11.save!

space12 = Space.create!(
  owner: sylvain,
  title: 'LYON 3 Studio mezzanine + parking',
  address: "14 Place Carnot, Lyon",
  description: 'LYON 3 - Studio de 30m² avec mezzanine, entièrement rénové et équipé avec une place de parking privée à intérieur de la copropriété. Idéalement placé, proche de la part dieu (1 arrêt de tramway), et proche de tous commerces, ( Super U, boulangerie, tabac, Centre commercial La Part Dieu...).',
  ranking: 1,
  price: 14,
)
url = 'https://images.unsplash.com/photo-1533779283484-8ad4940aa3a8?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c28abca5496f663d907e0306008213f7&auto=format&fit=crop&w=500&q=60'
space12.remote_image_url = url
space12.save!

space13 = Space.create!(
  owner: julien,
  title: 'Le petit palais en presqu\'île',
  address: "23 Rue de la Charité, Lyon",
  description: 'Rénovation aout 2017, loft charmant dans la partie historique de Lyon Escaliers atypique datant du 18e siècle sur la presqu\'île, entre berges du Rhône et de la Saône ( belles promenades à faire !) au coeur de la fête des lumières ! Vous emprunterez un escalier en pierres du 18éme siècle.',
  ranking: 1,
  price: 7,
)
url = 'https://images.unsplash.com/photo-1522444501378-94cddd292428?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6f4a2ff811f6fa90f949a32614d9bc0b&auto=format&fit=crop&w=1050&q=80'
space13.remote_image_url = url
space13.save!



puts "Create Booking"

bookingA = Booking.create!(mate: julien, space: space1)
bookingB = Booking.create!(mate: fred, space: space1)
bookingC = Booking.create!(mate: toto, space: space2)
bookingD = Booking.create!(mate: phil, space: space3)
bookingE = Booking.create!(mate: greg, space: space4)
bookingF = Booking.create!(mate: christy, space: space6)



