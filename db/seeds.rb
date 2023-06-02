puts "Cleaning the db..."
Booking.destroy_all
Cone.destroy_all
User.destroy_all

# ------------------------------
# USER SEEDS
User.create!(
  email: "user@hue.com",
  password: 111111
)
puts "Created new generic user"

User.create!(
  email: "listing@hue.com",
  password: 111111
)
puts "Created new listing user"

User.create!(
  email: "booking@hue.com",
  password: 111111
)

puts "Created new booking user"


# ------------------------------
# CONE SEEDS

# Cone 1
Cone.create!(
      user: User.all.sample,
      name: "Cone orange de New Jersey",
      description: "This cone is authentic, bright orange, and super lovely.",
      condition: ["Used", "New"].sample,
      quantity: rand(0..10),
      price: 50,
      location: "26 Oxford Terrace, West Orange",
      photo:
    )
    puts "Created new cone with id #{cone.id}"

# Cone 2
Cone.create!(
  user: User.all.sample,
  name: "Name here",
  description: "This cone is authentic, bright orange, and super lovely.",
  condition: ["Used", "New"].sample,
  quantity: rand(0..10),
  price: 50,
  location: "26 Oxford Terrace, West Orange",
  photo:
)
puts "Created new cone with id #{cone.id}"


# Cone 3
Cone.create!(
  user: User.all.sample,
  name: "Name here",
  description: "This cone is authentic, bright orange, and super lovely.",
  condition: ["Used", "New"].sample,
  quantity: rand(0..10),
  price: 50,
  location: "26 Oxford Terrace, West Orange",
  photo:
)
puts "Created new cone with id #{cone.id}"


# Cone 4
Cone.create!(
  user: User.all.sample,
  name: "Name here",
  description: "This cone is authentic, bright orange, and super lovely.",
  condition: ["Used", "New"].sample,
  quantity: rand(0..10),
  price: 50,
  location: "26 Oxford Terrace, West Orange",
  photo:
)
puts "Created new cone with id #{cone.id}"

# Cone 5
Cone.create!(
  user: User.all.sample,
  name: "Name here",
  description: "This cone is authentic, bright orange, and super lovely.",
  condition: ["Used", "New"].sample,
  quantity: rand(0..10),
  price: 50,
  location: "26 Oxford Terrace, West Orange",
  photo:
)
puts "Created new cone with id #{cone.id}"

# Cone 6
Cone.create!(
  user: User.all.sample,
  name: "Name here",
  description: "This cone is authentic, bright orange, and super lovely.",
  condition: ["Used", "New"].sample,
  quantity: rand(0..10),
  price: 50,
  location: "26 Oxford Terrace, West Orange",
  photo:
)
puts "Created new cone with id #{cone.id}"





require "open-uri"
cone_user = Cone.create!(
  user: User.all.sample,
  description: "Conify",
  condition: ["Used", "New"].sample,
  quantity: rand(0..15),
  price: Faker::Commerce.price
)
  file = URI.open('https://www.trafficsupply.ca/wp-content/uploads/2016/04/16014-300x300.jpg')
  cone.photo.attach(io: file, filename: 'cone.png', content_type: 'image/png')

  puts "Created new cone with id #{cone.id}"
end


# ------------------------------
# BOOKING SEEDS

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
