require 'random_data'

# Create Users
5.times do
  User.create!(
# #3
  name:     RandomData.random_name,
  email:    RandomData.random_email,
  password: RandomData.random_sentence
  )
end
users = User.all

# Create Topics
15.times do
  Topic.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph
  )
end
topics = Topic.all

# Create Posts
50.times do
  Post.create!(
    user:   users.sample,
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    user: users.sample,
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

#Create Questions
100.times do
  Question.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph,
    resolved: false
  )
end

# create sponsored posts
# 50.times do
#   SponsoredPost.create!(
#     topic:  topics.sample,
#     title:  RandomData.random_sentence,
#     body:   RandomData.random_paragraph,
#     price: 99
#   )
# end
# sponsoredposts = SponsoredPost.all

# Post.find_or_create_by!(title: "check 16 test title", body: "check 16 test bodyyyyyyyyyyyyyyyyyyyyyyyyyyy")
# # SponsoredPost.find_or_create_by!(title: "check 16 test title", body: "check 16 test body", price: 99)
# Comment.find_or_create_by!(body: "check 16 test comment", post: Post.find_or_create_by!(title: "check 16 test title", body: "check 16 test bodyyyyyyyyyyyyyyyyyyyyyyyyyy"))

# Create an admin user
admin = User.create!(
  name:     'Admin User',
  email:    'admin@example.com',
  password: 'helloworld',
  role:     'admin'
)

# Create a member
member = User.create!(
  name:     'Member User',
  email:    'member@example.com',
  password: 'helloworld'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
