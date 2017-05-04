require 'wiki_details'

# Create Users
10.times do
  User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.email,
  password: Faker::Number.number(8)
  )
end
users = User.all

# Create Wikis
50.times do
  Wiki.create!(
  name: Faker::HarryPotter.character,
  body: Faker::StarWars.quote,
  author: Faker::Friends.character,
  user: users.sample,
  category: WikiDetails.wiki_category
  )
end
wikis = Wiki.all

# Update first user to me
user = User.first
user.update_attributes!(
  first_name: "John",
  last_name: "Pickett",
  email: "john.pickett@gmail.com",
  password: "password",
  role: "awesome"
)

puts "Seed finished"
puts "#{User.count} users created"
puts "First user updated to John"
puts "#{Wiki.count} wikis created"
