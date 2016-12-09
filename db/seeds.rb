# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# User.find_or_create_by(email: 'admin@admin.com', password:'123456')
User.create([{email:'admin@admin.com', password:'123456'}])
Car.create([{NAME:'HB20'}])
Car.create([{NAME:'PUNTO'}])
Car.create([{NAME:'SIENA'}])
Car.create([{NAME:'PALIO'}])
Car.create([{NAME:'FOX'}])
Car.create([{NAME:'GOL'}])
Car.create([{NAME:'ONIX'}])