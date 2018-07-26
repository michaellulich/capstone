# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.create(name:"Dehd", email:"dehd@email.com", genre:"rock",password:"password")
Artist.create(name:"Deeper", email:"deeper@email.com", genre:"rock", password:"password")
Artist.create(name:"Circuit des Yeux", email:"CDY@email.com", genre: "ambient", password:"password")
Artist.create(name:"CAVE", email:"cave@email.com", genre:"experimental", password:"password")

User.create(name:"Mike", email:"mike@email.com", password:"password")
User.create(name:"Bob", email:"bob@email.com", password:"password")
User.create(name:"Doug", email:"doug@email.com", password:"password")
User.create(name:"Anthony", email:"anthony@email.com", password:"password")

Event.create(address:"2338 N Milwaukee Ave, Chicago, IL 60647", name:"Cole's Bar",time: 3.days.from_now, description:"live music")
Event.create(address:"3425 W Fullerton Ave, Chicago, IL 60647", name:"Burlington Bar",time: 3.days.from_now, description:"backroom live acts")
Event.create(address:"1354 W Wabansia Ave, Chicago, IL 60642", name:"The Hideout",time: 3.days.from_now, description:"porch session")
