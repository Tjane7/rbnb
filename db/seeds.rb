puts "Cleaning the db..."
Cone.destroy_all
User.destroy_all


3.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: 111111
  )
  puts "Created new user with id #{user.id}"
end

10.times do
  cone = Cone.create!(
    user: User.all.sample,
    description: Faker::Company.bs,
    condition: ["Used", "New"].sample,
    quantity: rand(0..15),
    location: Faker::Address.city
  )
  puts "Created new cone with id #{cone.id}"
end

puts "Ready!"
