# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Language.destroy_all
Review.destroy_all
Message.destroy_all
Location.destroy_all
Skill.destroy_all
Recruteur.destroy_all
Developpeur.destroy_all
Profil.destroy_all
User.destroy_all


languages = ['C', 'Java', 'Objective c', 'C++', 'C#', 'PHP', 'Visual Basic', 'Python', 'Transact SQL', 'JavaScript', 'Visual Basic', 'Perl', 'Ruby', 'Matlab', 'Delphi', 'Lips', 'PL/SQL', 'Pascal', 'Assembly', 'F#']
languages.each { |language| Language.create!(name: language)}

user = User.create!(
  email: 'chris@gmail.com',
  password: 'topsecret'
  )

profil = Profil.create!(
  name: 'Christophe',
  address: '161 Rue nationale',
  city: 'Lille',
  user: user,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512042212/13557947_10153697307133568_4698551385560992266_n_tu3vi6.jpg'
  )

dev = Developpeur.create!(
  description: 'I am a good Dev',
  available: 'Yes',
  profil: profil,
  price: 80,
  address: profil.address,
  city: profil.city
  )

rec = Recruteur.create!(
  description: 'xxx',
  profil: profil,
  )

user2 = User.create!(
  email: 'alexandre@gmail.com',
  password: 'topsecret'
  )

profil2 = Profil.create!(
  name: 'Alexandre',
  address: '2 Avenue des Saules',
  city: 'Lille',
  user: user2,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512045906/Alex_wwl7xj.jpg'
  )

dev2 = Developpeur.create!(
  description: 'I am a good Dev, trust me!',
  available: 'Yes',
  profil: profil2,
  price: 93,
  address: profil2.address,
  city: profil2.city
  )

rec2 = Recruteur.create!(
  description: 'xxx',
  profil: profil2,
  )

user3 = User.create!(
  email: 'alexis@gmail.com',
  password: 'topsecret'
  )

profil3 = Profil.create!(
  name: 'Alexis',
  address: '8 Avenue des Saules',
  city: 'Lille',
  user: user3,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512046756/Alexis_duxhij.jpg'
  )

dev3 = Developpeur.create!(
  description: 'I will be your solution!',
  available: 'Yes',
  profil: profil3,
  price: 75,
  address: profil3.address,
  city: profil3.city
  )

rec3 = Recruteur.create!(
  description: 'xxx',
  profil: profil3,
  )

user4 = User.create!(
  email: 'hugo@gmail.com',
  password: 'topsecret'
  )

profil4 = Profil.create!(
  name: 'Hugo',
  address: '148 Rue nationale',
  city: 'Lille',
  user: user4,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512047253/Hugo_ljlzb1.jpg'
  )

dev4 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil4,
  price: 75,
  address: profil4.address,
  city: profil4.city
  )

rec4 = Recruteur.create!(
  description: 'xxx',
  profil: profil4,
  )

user5 = User.create!(
  email: 'thomas@gmail.com',
  password: 'topsecret'
  )

profil5 = Profil.create!(
  name: 'Thomas',
  address: '1 Rue des stations',
  city: 'Lille',
  user: user5,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072571/thomas_uvcntw.png'
  )

dev5 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil5,
  price: 75,
  address: profil5.address,
  city: profil5.city
  )

rec5 = Recruteur.create!(
  description: 'xxx',
  profil: profil5,
  )

user6 = User.create!(
  email: 'romain@gmail.com',
  password: 'topsecret'
  )

profil6 = Profil.create!(
  name: 'Romain',
  address: 'Rue de fleurus',
  city: 'Lille',
  user: user6,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072570/romain_t68m1f.jpg'
  )

dev6 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil6,
  price: 95,
  address: profil6.address,
  city: profil6.city
  )

rec6 = Recruteur.create!(
  description: 'xxx',
  profil: profil6,
  )

user7 = User.create!(
  email: 'maxime@gmail.com',
  password: 'topsecret'
  )

profil7 = Profil.create!(
  name: 'Maxime',
  address: 'Rue du molinel',
  city: 'Lille',
  user: user7,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072570/maxime_hjnus6.jpg'
  )

dev7 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil7,
  price: 76,
  address: profil7.address,
  city: profil7.city
  )

rec7 = Recruteur.create!(
  description: 'xxx',
  profil: profil7,
  )

user8 = User.create!(
  email: 'matthieu@gmail.com',
  password: 'topsecret'
  )

profil8 = Profil.create!(
  name: 'Mathieu',
  address: 'Rue de gand',
  city: 'Lille',
  user: user8,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072569/matthieu_ewtmpn.jpg'
  )

dev8 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil8,
  price: 86,
  address: profil8.address,
  city: profil8.city
  )

rec8 = Recruteur.create!(
  description: 'xxx',
  profil: profil8,
  )

user9 = User.create!(
  email: 'lucie@gmail.com',
  password: 'topsecret'
  )

profil9 = Profil.create!(
  name: 'Lucie',
  address: 'Rue pasteur',
  city: 'Lille',
  user: user9,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072569/lucie_djnuco.jpg'
  )

dev9 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil9,
  price: 239,
  address: profil9.address,
  city: profil9.city
  )

rec9 = Recruteur.create!(
  description: 'xxx',
  profil: profil9,
  )

user10 = User.create!(
  email: 'guillaume@gmail.com',
  password: 'topsecret'
  )

profil10 = Profil.create!(
  name: 'Guillaume',
  address: 'Rue des rossignols',
  city: 'Lille',
  user: user10,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072569/guillaume_jo4bhv.jpg'
  )

dev10 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil10,
  price: 100,
  address: profil10.address,
  city: profil10.city
  )

rec10 = Recruteur.create!(
  description: 'xxx',
  profil: profil10,
  )

user11 = User.create!(
  email: 'gauthier@gmail.com',
  password: 'topsecret'
  )

profil11 = Profil.create!(
  name: 'Gauthier',
  address: 'Rue racine',
  city: 'Lille',
  user: user11,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072569/gauthier_ertsxj.jpg'
  )

dev11 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil11,
  price: 65,
  address: profil11.address,
  city: profil11.city
  )

rec11 = Recruteur.create!(
  description: 'xxx',
  profil: profil11,
  )

user12 = User.create!(
  email: 'franco@gmail.com',
  password: 'topsecret'
  )

profil12 = Profil.create!(
  name: 'Franco',
  address: 'Rue royale',
  city: 'Lille',
  user: user12,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072568/franco_jdxw7c.jpg'
  )

dev12 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil12,
  price: 72,
  address: profil12.address,
  city: profil12.city
  )

rec12 = Recruteur.create!(
  description: 'xxx',
  profil: profil12,
  )

user13 = User.create!(
  email: 'florinne@gmail.com',
  password: 'topsecret'
  )

profil13 = Profil.create!(
  name: 'Florinne',
  address: 'Rue basse',
  city: 'Lille',
  user: user13,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072569/florinne_efu4ap.jpg'
  )

dev13 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil13,
  price: 172,
  address: profil13.address,
  city: profil13.city
  )

rec13 = Recruteur.create!(
  description: 'xxx',
  profil: profil13,
  )

user14 = User.create!(
  email: 'denis@gmail.com',
  password: 'topsecret'
  )

profil14 = Profil.create!(
  name: 'Denis',
  address: 'Rue de la plaine',
  city: 'Lille',
  user: user14,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072567/denis_mxbnab.jpg'
  )

dev14 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil14,
  price: 68,
  address: profil14.address,
  city: profil14.city
  )

rec14 = Recruteur.create!(
  description: 'xxx',
  profil: profil14,
  )

user15 = User.create!(
  email: 'clement@gmail.com',
  password: 'topsecret'
  )

profil15 = Profil.create!(
  name: 'Clement',
  address: 'Avenue de Verdun',
  city: 'Lille',
  user: user15,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072571/clement_q6b1bz.png'
  )

dev15 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil15,
  price: 45,
  address: profil15.address,
  city: profil15.city
  )

rec15 = Recruteur.create!(
  description: 'xxx',
  profil: profil15,
  )

user16 = User.create!(
  email: 'claire@gmail.com',
  password: 'topsecret'
  )

profil16 = Profil.create!(
  name: 'Claire',
  address: 'Rue lorraine',
  city: 'Lille',
  user: user16,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072568/claire_xoehrm.jpg'
  )

dev16 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil16,
  price: 300,
  address: profil16.address,
  city: profil16.city
  )

rec16 = Recruteur.create!(
  description: 'xxx',
  profil: profil16,
  )

user17 = User.create!(
  email: 'aurelien@gmail.com',
  password: 'topsecret'
  )

profil17 = Profil.create!(
  name: 'Aurelien',
  address: '10 rue royale',
  city: 'Lille',
  user: user17,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072571/aurelien_ppbtdt.png'
  )

dev17 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil17,
  price: 90,
  address: profil17.address,
  city: profil17.city
  )

rec17 = Recruteur.create!(
  description: 'xxx',
  profil: profil17,
  )

user18 = User.create!(
  email: 'arthur@gmail.com',
  password: 'topsecret'
  )

profil18 = Profil.create!(
  name: 'Arthur',
  address: 'Rue de valmy',
  city: 'Lille',
  user: user18,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072567/arthur_gkpvq5.jpg'
  )

dev18 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil18,
  price: 0,
  address: profil18.address,
  city: profil18.city
  )

rec18 = Recruteur.create!(
  description: 'xxx',
  profil: profil18,
  )

user19 = User.create!(
  email: 'antoine@gmail.com',
  password: 'topsecret'
  )

profil19 = Profil.create!(
  name: 'Antoine',
  address: 'Rue courmont',
  city: 'Lille',
  user: user19,
  remote_photo_url: 'http://res.cloudinary.com/dibonalexandre/image/upload/v1512072568/antoine_ayvlce.jpg'
  )

dev19 = Developpeur.create!(
  description: 'I am your back-end mate!',
  available: 'Yes',
  profil: profil19,
  price: 0,
  address: profil19.address,
  city: profil19.city
  )

rec19 = Recruteur.create!(
  description: 'xxx',
  profil: profil19,
  )





