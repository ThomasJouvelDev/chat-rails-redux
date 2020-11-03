# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.delete_all
User.delete_all
Channel.delete_all

general = Channel.create(name: "general")
paris = Channel.create(name: "paris")
react = Channel.create(name: "react")
lyon = Channel.create(name: "lyon")
Channel.all { |e| print e  }

users = User.create([{email: "admin@example.com", nickname:"Admin", password: "adminadmin" }, { email: "thomas.jouvel@gmail.com", nickname:"Joujou", password: "testtest" }, { email: "user@usermail.com", nickname:"User", password: "test2test2" }])
print users

Message.create(user: users.sample, channel: general, content: "ca fait longtemps que j'ai basculé du mauvais coté de la lumière")
Message.create(user: users.sample, channel: general, content: "j'suis dans le Q7 tout est noir comme la carroserie")
Message.create(user: users.sample, channel: general, content: "Ta derniere vision sera un desert eagle qui tousse ")
Message.create(user: users.sample, channel: general, content: "Envoie les bouteilles, j'suis dans mon mood, bxl zoo ")
Message.create(user: users.sample, channel: paris, content: "J'connais les ghetto, les dealers les escrocs")
Message.create(user: users.sample, channel: paris, content: "le mollard est craché")
Message.create(user: users.sample, channel: paris, content: "deux toiles de mer")
Message.create(user: users.sample, channel: paris, content: "le coeur en miette")
Message.create(user: users.sample, channel: react, content: "react channel")