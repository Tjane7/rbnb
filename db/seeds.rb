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
#----cone 1 -----#

puts "Created new booking user"

require "open-uri"
cone_user = Cone.create!(
  user: User.all.sample,
  description: "Conify",
  condition: ["Used", "New"].sample,
  quantity: rand(0..15),
  price: Faker::Commerce.price
)
file = URI.open('https://www.trafficsupply.ca/wp-content/uploads/2016/04/16014-300x300.jpg')
cone_user.photo.attach(io: file, filename: 'cone.png', content_type: 'image/png')

puts "Created new cone with id #{cone_user.id}"


require "open-uri"
cone1 = Cone.create!(
  user: User.all.sample,
  name: "Cone orange de New Jersey",
  description: "This cone is authentic, bright orange, and super lovely.",
  condition: "Used",
  quantity: rand(0..5),
  price: 50,
  location: "26 Oxford Terrace, West Orange"
)

file = URI.open('https://www.trafficsupply.ca/wp-content/uploads/2016/04/16014-300x300.jpg')
cone_user.photo.attach(io: file, filename: 'cone.png', content_type: 'image/png')

puts "Created new cone with id #{cone_user.id}"

# Cone 1
cone1 = Cone.create!(
  user: User.all.sample,
  name: "Cone orange de New Jersey",
  description: "This cone is authentic, bright orange, and super lovely.",
  condition: "Used",
  quantity: 1,
  price: 50,
  location: "26 Oxford Terrace, West Orange",
  # photo:  INSERT YOUR SOLUTION HERE
)
puts "Created new cone with id #{cone1.id}"


# Cone 2
cone2 = Cone.create!(
  user: User.all.sample,
  name: "Set of construction pylons",
  description: "Fantastic pylons for everyday use",
  condition: "Lightly used",
  quantity: 2,
  price: 40,
  location: "San Francisco, California",
  # photo:  INSERT YOUR SOLUTION HERE
)
puts "Created new cone with id #{cone2.id}"

# Cone 3
cone3 = Cone.create!(
  user: User.all.sample,
  name: "Authentic cone orange",
  description: "This one is for the cone lovers out there",
  condition: "Ngl pretty beat up",
  quantity: 1,
  price: 30,
  location: "Brussels, Belgium",
  # photo: INSERT YOUR SOLUTION HERE
)
puts "Created new cone with id #{cone3.id}"





# 10.times do
#   cone = Cone.create!(
#     user: User.all.sample,
#     description: Faker::Company.bs,
#     condition: ["Used", "New"].sample,
#     quantity: rand(0..15),
#     price: Faker::Commerce.price
#   )
#   puts "Created new cone with id #{cone.id}"
# end

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
