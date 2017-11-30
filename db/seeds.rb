# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Profil.destroy_all
Review.destroy_all
Message.destroy_all
User.destroy_all
Location.destroy_all
Recruteur.destroy_all
Developpeur.destroy_all
Skill.destroy_all
Language.destroy_all

languages = ['C', 'Java', 'Objective c', 'C++', 'C#', 'PHP', 'Visual Basic', 'Python', 'Transact SQL', 'JavaScript', 'Visual Basic', 'Perl', 'Ruby', 'Matlab', 'Delphi', 'Lips', 'PL/SQL', 'Pascal', 'Assembly', 'F#']
languages.each { |language| Language.create!(name: language)}

user = User.create!([{:email => 'chris@gmail.com', :encrypted_password =>'topsecret'}])

profil = Profil.create!([{ :name => 'Christophe', :address => '7. Rue de Hagen', :city => 'Steinfort' }])


