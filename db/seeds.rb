# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Message.delete_all
Message.create({content: "Here's a short message for whomever is listening.", 
	user_id: "Bob", planet_id: "Kepler 22b"})
Message.create({content: "Here's a message for any bipeds out there.", 
	user_id: "Sam", planet_id: "Kepler 38d"})