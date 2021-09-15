# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Grade.destroy_all
Skill.destroy_all
User.destroy_all

a = Skill.create(name: 'ruby', description: 'syntax sugar')
b = Skill.create(name: 'rails', description: 'stay on the rails... convention')
c = Skill.create(name: 'react', description: 'make writing UI nice!')
d = Skill.create(name: 'Homework 1', description: 'CRUD ACTIONS')
e = Skill.create(name: 'Homework 2', description: 'Cassino')

skills = [a,b,c,d,e]

5.times do |i|
  user = User.create(name: Faker::Name.name)
    5.times do |i|
      Grade.create(score: rand(100), skill_id:skills[i].id, user_id: user.id)
    end
end

puts "Skill Size: #{Skill.all.length}"
puts "User Size: #{User.all.length}"
puts "Grade Size: #{Grade.all.length}"
puts "First User Skills: #{User.first.skills}"
puts "First User Grades: #{User.first.grades}"