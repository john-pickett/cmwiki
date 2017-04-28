require 'wiki_details'

# Create Users
10.times do
  User.create!(
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
  email: "john.pickett@gmail.com",
  password: "password",
  role: "awesome"
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"
