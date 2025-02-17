# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Gym.destroy_all
Client.destroy_all
Membership.destroy_all

g1= Gym.create(name: "La Fitness", address: "Suite 981 1795 Leida Fords, Nataliemouth, TN 14377-4979")
g2 = Gym.create(name: "Planet Fitness", address: "7768 David Avenue, Greenside, PA 67475-3655")

c1= Client.create(name: "Casie Effertz", age: 18)
c2= Client.create(name: "Dorris Bogan", age: 52)
c3= Client.create(name: "Bernie Schiller", age: 44)
c4= Client.create(name: "Manie Dare", age: 29)

Membership.create(gym: Gym.all.sample, client: Client.all.sample, charge: 200)
Membership.create(gym: Gym.all.sample, client: Client.all.sample, charge: 4000)
Membership.create(gym: Gym.all.sample, client: Client.all.sample, charge: 10)

puts "Done"