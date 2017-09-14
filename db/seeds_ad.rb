require 'random_data'

# Create Posts
50.times do
  Advertisement.create!(
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph,
    price: RandomData.random_price
  )
end
advertisement = Advertisement.all

Advertisement.find_or_create_by!(title: "test title", body: "test body", price: 15)

puts "Seed finished"
puts "#{Advertisement.count} ads created"
