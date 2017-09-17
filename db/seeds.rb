require 'random_data'

# Create Posts
50.times do
  Post.create!(
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

Post.find_or_create_by!(title: "check 16 test title", body: "check 16 test body")
Comment.find_or_create_by!(body: "check 16 test comment", post: Post.find_or_create_by!(title: "check 16 test title", body: "check 16 test body"))

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Question.count} questions created"
