# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Languages.destroy_all

languages = ['C', 'Java', 'Objective c', 'C++', 'C#', 'PHP', 'Visual Basic', 'Python', 'Transact SQL', 'JavaScript', 'Visual Basic', 'Perl', 'Ruby', 'Matlab', 'Delphi', 'Lips', 'PL/SQL', 'Pascal', 'Assembly', 'F#']
languages.each { |languages| Languages.create(name: languages)}

