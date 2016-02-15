require RandomData

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
    user:   users.sample,
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
    user: users.sample,
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

moderator = User.create!(
  name:     'Moderator User',
  email:    'mod@example.com',
  password: 'helloworld'

)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Questions.count} questions created"
puts "#{Sponsored_posts.count} sponsored_posts created"
