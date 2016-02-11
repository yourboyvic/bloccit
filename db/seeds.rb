require RandomData

15.times do
  Sponsored_posts.create!(
    name:         RandomData.random_sentence,
    description:  RandomData.random_paragraph,
  )
end

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
# #1
  Post.create!(
    topic:  topics.sample,
    title:  RandomData.random_sentence,
    body:   RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
# #3
100.times do
  Comment.create!(
# #4
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "#{post.count}"
Post.find_or_create_by(title: "a unique title", body: "a unique body")
puts "#{post.count}"

100.times do
  Question.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph,
    resolved: false
  )
end

puts "Seed finished"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Questions.count} questions created"
puts "#{Sponsored_posts.count} sponsored_posts created"
