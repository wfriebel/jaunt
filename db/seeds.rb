include Faker

users = User.all
users.each do |user|
	user.destroy
end

locations = Location.all
locations.each do |location|
	location.destroy
end

posts = Post.all
posts.each do |post|
	post.destroy
end

comments = Comment.all
comments.each do |comment|
	comment.destroy
end


10.times do 
	User.create(
		user_name: Faker::Name.name,
		email: Faker::Internet.email,
		password: "123"
		)
end

20.times do
	Location.create(
		name: Faker::App.name,
		description: Faker::Lorem.sentence
		)
end

50.times do
	Post.create(
		content: Faker::Lorem.paragraph,
		user_id: User.all.sample.id,
		location_id: Location.all.sample.id
		)
end

100.times do
	Comment.create(
		content: Faker::Lorem.paragraph,
		post_id: Post.all.sample.id,
		user_id: User.all.sample.id
	)
end