# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
University.create(name: 'Carnegie Mellon University Qatar')
University.create(name: 'Texas A & M University Qatar')
University.create(name: 'Georgetown University Qatar')
University.create(name: 'Weil Cornell University Qatar')
University.create(name: 'Northwestern University Qatar')
University.create(name: 'Virginia Commonwealth University Qatar')
Registrar.create(first_name: 'Talal', last_name: 'Shoeb', phone: '+97477155015', email: 'talal@cmu.edu', university_id: 1, admin: true, password: 'hello', password_confirmation: 'hello')