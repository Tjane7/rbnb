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
cone1 = Cone.create!(
  user: User.all.sample,
  description: "Conify",
  condition: ["Used", "New"].sample,
  quantity: rand(0..5),
  price: 50,
  location: "bikini bottom"
)
file = File.open('app/assets/images/cone.png')
cone1.photo.attach(io: file, filename: 'cone.png', content_type: 'image/png')

puts "Created new cone with id #{cone1.id}"

#----cone 2 -----#
cone2 = Cone.create!(
  user: User.all.sample,
  name: "Cone in combo with signalisation",
  description: "Comfuse everybody.",
  condition: "Used",
  quantity: rand(0..5),
  price: 50,
  location: "5447 boul St-laurent"
)

file = File.open('app/assets/images/package.jpeg')
cone2.photo.attach(io: file, filename: 'package.jpeg', content_type: 'image/png')

puts "Created new cone with id #{cone2.id}"

#----cone 3 -----#

cone3 = Cone.create!(
  user: User.all.sample,
  name: "Cone orange de New Jersey",
  description: "This cone is authentic, bright orange, and super lovely.",
  condition: "Used",
  quantity: 1,
  price: 50,
  location: "26 Oxford Terrace, West Orange",

)

file = File.open('app/assets/images/light work.jpeg')
cone3.photo.attach(io: file, filename: 'light work.jpeg', content_type: 'image/png')

puts "Created new cone with id #{cone3.id}"


# Cone 4
cone4 = Cone.create!(
  user: User.all.sample,
  name: "Set of construction pylons",
  description: "Fantastic pylons for everyday use",
  condition: "Lightly used",
  quantity: 2,
  price: 40,
  location: "San Francisco, California",

)
puts "Created new cone with id #{cone4.id}"

file = File.open('app/assets/images/purple con.jpeg')
cone4.photo.attach(io: file, filename: 'purple con.jpeg', content_type: 'image/jpeg')


# Cone 5
cone5 = Cone.create!(
  user: User.all.sample,
  name: "Authentic cone orange",
  description: "This one is for the cone lovers out there",
  condition: "Ngl pretty beat up",
  quantity: 1,
  price: 30,
  location: "Brussels, Belgium",

)
puts "Created new cone with id #{cone5.id}"

file = File.open('app/assets/images/alot of cone.jpeg')
cone5.photo.attach(io: file, filename: 'alot of cone.jpeg', content_type: 'image/png')






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
