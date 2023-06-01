puts "Cleaning the db..."
Booking.destroy_all
Cone.destroy_all
User.destroy_all

user = User.create!(
  email: "user@hue.com",
  password: 111111
)
puts "Created new generic user"

listing_user = User.create!(
  email: "listing@hue.com",
  password: 111111
)
puts "Created new listing user"

booking_user = User.create!(
  email: "booking@hue.com",
  password: 111111
)
puts "Created new booking user"



10.times do
  cone = Cone.create!(
    user: User.all.sample,
    description: Faker::Company.bs,
    condition: ["Used", "New"].sample,
    quantity: rand(0..15),
    price: Faker::Commerce.price
  )
  puts "Created new cone with id #{cone.id}"
end

5.times do
  booking = Booking.create!(
    user: User.all.sample,
    cone: Cone.all.sample,
    accepted: Faker::Boolean.boolean,
    start_date: Faker::Date.between(from: '2023-01-01', to: '2023-02-28'),
    end_date: Faker::Date.between(from: '2023-03-01', to: '2023-05-28'),
  )
  puts "Created new booking with id #{booking.id}"
end

puts "Ready!"
