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
  address: '161. Rue nationale',
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

user2 = User.create!(
  email: 'alexandre@gmail.com',
  password: 'topsecret'
  )

profil2 = Profil.create!(
  name: 'Alexandre',
  address: '2. Avenue des Saules',
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

user3 = User.create!(
  email: 'alexis@gmail.com',
  password: 'topsecret'
  )

profil3 = Profil.create!(
  name: 'Alexis',
  address: '8. Avenue des Saules',
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

user4 = User.create!(
  email: 'hugo@gmail.com',
  password: 'topsecret'
  )

profil4 = Profil.create!(
  name: 'Hugo',
  address: '148. Rue nationale ',
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
