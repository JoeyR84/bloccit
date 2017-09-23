require 'random_data'

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
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
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
50.times do
  SponsoredPost.create!(
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    price: 99
  )
end
sponsoredposts = SponsoredPost.all

Post.find_or_create_by!(title: "check 16 test title", body: "check 16 test body")
SponsoredPost.find_or_create_by!(title: "check 16 test title", body: "check 16 test body", price: 99)
Comment.find_or_create_by!(body: "check 16 test comment", post: Post.find_or_create_by!(title: "check 16 test title", body: "check 16 test body"))

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{SponsoredPost.count} sponsored posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
