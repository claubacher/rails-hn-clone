# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

5.times do
  User.create(username: Faker::Internet.user_name, password: "pass")
end

10.times do
  Post.create(title: Faker::Company.bs, article: Faker::Lorem.paragraph(sentence_count = 5, supplemental = false), user_id: rand(1..5))
end

20.times do
  Comment.create(opinion: Faker::Company.catch_phrase, post_id: rand(1..10) , user_id: rand(1..5))
end
