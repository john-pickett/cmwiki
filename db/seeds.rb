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
  title: Faker::Book.title,
  author: Faker::Friends.character,
  published_date: Faker::Date.backward(10000),
  body: "This is the body",
  user: users.sample,
  category: WikiDetails.wiki_category,
  setting: "Here's the setting",
  recommended_age: "Ages 10 to 18",
  sensitive_content: "There is no sensitive content in this book",
  book_synopsis: "Here is a lovely summary of the overall plot points and themes from the book."
  )
end
wikis = Wiki.all

# Create Chapter Summaries
500.times do
  Chapter.create!(
  name: "Chapter Summary",
  body: "Here is a lovely summary of this chapter, complete with setting, characters, and plot points.",
  wiki: wikis.sample
  )
end
chapters = Chapter.all

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
puts "#{Chapter.count} chapter summaries created"
