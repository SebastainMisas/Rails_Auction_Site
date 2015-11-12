# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sebastian = User.new(name: "sebastain", email: "sebastain@example.com")
nizar = User.new(name: "nizar", email: "nizar@example.com")

sebastian.save
nizar.save


macbook = Product.new(title: "Macbook Pro 2015",description: "Great condition, no defects" ,deadline: Time.now ) 
mouse = Product.new(title: "Razor gaming mouse" ,description: "Great codition, no defects" ,deadline: Time.now) 

macbook.save
mouse.save