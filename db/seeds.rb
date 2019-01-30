# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
	user = User.create!(name: Faker::GreekPhilosophers.name)
end

15.times do
	pin = Pin.create!(url: Faker::Internet.url, user_id: rand(1..10))
end

25.times do
	comment = Comment.create!(body: Faker::GreekPhilosophers.quote, user_id: rand(1..10), pin_id: rand(1..15))
end