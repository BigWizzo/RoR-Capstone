# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# (1..3).each do |id|
  # Student.create!(
      # id: id, # each user is assigned an id from 1-20
      # username: Faker::Name.name[6..15],
      # email: Faker::Internet.email,
      # password: "password", # issue each user the same password
      # password_confirmation: "password",
  # )
# end
# 
# (1..10).each do |id|
  # subject = Subject.new(
      # id: id,
      # student_id: rand(1..3), # we have userIds between 1 and 20. Assign a ticket to a user randomly
      # title: Faker::Lorem.sentence(word_count: 2), 
      # description: Faker::Lorem.sentence(word_count: 2)
  # )
  # subject.icon.attach(
  # io: File.open('app/assets/images/placeholder.jpg'),
  # filename: 'placeholder.jpg'
  # )
  # subject.save!
# end
# 
# (1..10).each do |id|
  # Clocking.create!(
      # id: id,
      # subject_id: rand(1..10),
      # student_id: rand(1..3),
      # topic: Faker::Lorem.sentence(word_count: 2),
      # details: Faker::Lorem.sentence(word_count: 2),
      # ***user_name: User.find(rand(1..20)).name,***
      # duration: Faker::Number.number(digits: 1)
  # )
# end
# 
# (11..20).each do |id|
  # Clocking.create!(
      # id: id,
      # ***subject_id: rand(1..10),***
      # student_id: rand(1..3),
      # topic: Faker::Lorem.sentence(word_count: 2),
      # details: Faker::Lorem.sentence(word_count: 2),
      # ***user_name: User.find(rand(1..20)).name,***
      # duration: Faker::Number.number(digits: 1)
  # )
# end
# 