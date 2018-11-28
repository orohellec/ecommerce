# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Item.destroy.all #à chaque db:seed supprime l'ancien et regénère de nouveaux seeds

require 'faker'

20.times do
my_item = Item.new(image_url: Faker::LoremPixel.image("300x300", true, 'cats'), title: Faker::Ancient.god, description: Faker::Ancient.primordial, price: Faker::Number.decimal(2))

my_item.save

end