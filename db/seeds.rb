
=begin
# Users
User.destroy_all
 User.create!(username:  "Example User",
             email_address: "freddiebutcher@gmail.com",
             first_name: "Freddie",
             last_name: "Butcher",
             user_bio: "Test bio",
             password: "chicken")

 99.times do |n|
   name  = "Fred"
   email = "fred-#{n+1}@butcher.com"
   password = "chicken"
   User.create!(first_name: name,
                email_address: email,
                password: password,
                user_bio: "This is a test")
 end

 # Posts
Post.destroy_all
 users = User.order(:created_at).take(6)
 50.times do
   content = "sentence"
   users.each { |user| user.posts.create!(show_name: "Podcast",
     episode_name: "Podcast episode",                             episode_description: content,
     pod_link: "https://www.wired.com/wp-content/uploads/2015/12/headphones-podcast-business-500850383-blue-f.jpg",
     img_link: "https://www.wired.com/wp-content/uploads/2015/12/headphones-podcast-business-500850383-blue-f.jpg") }
 end

 # Following relationships
 users = User.all
 user  = users.first
 following = users[2..50]
 followers = users[3..40]
 following.each { |followed| user.follow(followed) }
 followers.each { |follower| follower.follow(user) }
=end

# =begin
puts "Creating posts"
p1 = Post.create :show_name => 'The Cycling Podcast', :episode_name => 'Tour de France - Stage 18', :episode_description => 'News roundup from the 18th stage of the 2019 Tour de France.', :pod_link => 'https://thecyclingpodcast.com/podcast/stage-18-embrun-valloire', :img_link => 'https://thecyclingpodcast.com/wp-content/uploads/2018/01/Screen-Shot-2018-01-03-at-16.48.19.png'
p2 = Post.create :show_name => 'Reply-All', :episode_name => 'The Takeover', :episode_description => 'Thomas Oscar is an Australian teenager who tried to make the most boring Facebook group possible - a group where members pretend to be corporate drones in a non-existent office.', :pod_link => 'https://gimletmedia.com/shows/reply-all/94hwmv/29-the-takeover', :img_link => 'https://res.cloudinary.com/gimlet-media/image/upload/c_scale,f_auto,q_auto:best,w_1000/dica7jm4jwcj4zvjufdx'
#:user_id => u2.id
p3 = Post.create :show_name => 'The Cycling Podcast', :episode_name => 'Tour de France - Stage 18', :episode_description => 'News roundup from the 18th stage of the 2019 Tour de France.', :pod_link => 'https://thecyclingpodcast.com/podcast/stage-18-embrun-valloire', :img_link => 'https://thecyclingpodcast.com/wp-content/uploads/2018/01/Screen-Shot-2018-01-03-at-16.48.19.png' #:user_id => u1.id
p4 = Post.create :show_name => 'Reply-All', :episode_name => 'The Takeover', :episode_description => 'Thomas Oscar is an Australian teenager who tried to make the most boring Facebook group possible - a group where members pretend to be corporate drones in a non-existent office.', :pod_link => 'https://gimletmedia.com/shows/reply-all/94hwmv/29-the-takeover', :img_link => 'https://res.cloudinary.com/gimlet-media/image/upload/c_scale,f_auto,q_auto:best,w_1000/dica7jm4jwcj4zvjufdx'
#:user_id => u2.id
p5 = Post.create :show_name => 'The Cycling Podcast', :episode_name => 'Tour de France - Stage 18', :episode_description => 'News roundup from the 18th stage of the 2019 Tour de France.', :pod_link => 'https://thecyclingpodcast.com/podcast/stage-18-embrun-valloire', :img_link => 'https://thecyclingpodcast.com/wp-content/uploads/2018/01/Screen-Shot-2018-01-03-at-16.48.19.png' #:user_id => u1.id
p6 = Post.create :show_name => 'Reply-All', :episode_name => 'The Takeover', :episode_description => 'Thomas Oscar is an Australian teenager who tried to make the most boring Facebook group possible - a group where members pretend to be corporate drones in a non-existent office.', :pod_link => 'https://gimletmedia.com/shows/reply-all/94hwmv/29-the-takeover', :img_link => 'https://res.cloudinary.com/gimlet-media/image/upload/c_scale,f_auto,q_auto:best,w_1000/dica7jm4jwcj4zvjufdx'
#:user_id => u2.id
p7 = Post.create :show_name => 'The Cycling Podcast', :episode_name => 'Tour de France - Stage 18', :episode_description => 'News roundup from the 18th stage of the 2019 Tour de France.', :pod_link => 'https://thecyclingpodcast.com/podcast/stage-18-embrun-valloire', :img_link => 'https://thecyclingpodcast.com/wp-content/uploads/2018/01/Screen-Shot-2018-01-03-at-16.48.19.png' #:user_id => u1.id
p8 = Post.create :show_name => 'Reply-All', :episode_name => 'The Takeover', :episode_description => 'Thomas Oscar is an Australian teenager who tried to make the most boring Facebook group possible - a group where members pretend to be corporate drones in a non-existent office.', :pod_link => 'https://gimletmedia.com/shows/reply-all/94hwmv/29-the-takeover', :img_link => 'https://res.cloudinary.com/gimlet-media/image/upload/c_scale,f_auto,q_auto:best,w_1000/dica7jm4jwcj4zvjufdx'
#:user_id => u2.id
p9 = Post.create :show_name => 'The Cycling Podcast', :episode_name => 'Tour de France - Stage 18', :episode_description => 'News roundup from the 18th stage of the 2019 Tour de France.', :pod_link => 'https://thecyclingpodcast.com/podcast/stage-18-embrun-valloire', :img_link => 'https://thecyclingpodcast.com/wp-content/uploads/2018/01/Screen-Shot-2018-01-03-at-16.48.19.png' #:user_id => u1.id
p10 = Post.create :show_name => 'Reply-All', :episode_name => 'The Takeover', :episode_description => 'Thomas Oscar is an Australian teenager who tried to make the most boring Facebook group possible - a group where members pretend to be corporate drones in a non-existent office.', :pod_link => 'https://gimletmedia.com/shows/reply-all/94hwmv/29-the-takeover', :img_link => 'https://res.cloudinary.com/gimlet-media/image/upload/c_scale,f_auto,q_auto:best,w_1000/dica7jm4jwcj4zvjufdx'
#:user_id => u2.id

User.destroy_all
puts "Creating users"
u1 = User.create :email_address => 'freddiebutcher@gmail.com', :username => 'fcjb1', :first_name => 'Freddie', :last_name => 'Butcher', :user_bio => 'Freddie Butcher lives in Sydney', :password => 'chicken'
u2 = User.create :email_address => 'sophie.dodson@ymail.com', :username => 'scd1', :first_name => 'Sophie', :last_name => 'Dodson', :user_bio => 'Sophie Dodson lives in Sydney', :password => 'chicken'
u3 = User.create :email_address => 'freddiebutcher1@gmail.com', :username => 'fcjb2', :first_name => 'Freddie', :last_name => 'Butcher', :user_bio => 'Freddie Butcher lives in Sydney', :password => 'chicken'
u4 = User.create :email_address => 'sophie.dodson1@ymail.com', :username => 'scd2', :first_name => 'Sophie', :last_name => 'Dodson', :user_bio => 'Sophie Dodson lives in Sydney', :password => 'chicken'
u5 = User.create :email_address => 'freddiebutcher2@gmail.com', :username => 'fcjb3', :first_name => 'Freddie', :last_name => 'Butcher', :user_bio => 'Freddie Butcher lives in Sydney', :password => 'chicken'
u6 = User.create :email_address => 'sophie.dodson2@ymail.com', :username => 'scd3', :first_name => 'Sophie', :last_name => 'Dodson', :user_bio => 'Sophie Dodson lives in Sydney', :password => 'chicken'
u7 = User.create :email_address => 'freddiebutcher3@gmail.com', :username => 'fcjb4', :first_name => 'Freddie', :last_name => 'Butcher', :user_bio => 'Freddie Butcher lives in Sydney', :password => 'chicken'
u8 = User.create :email_address => 'sophie.dodson3@ymail.com', :username => 'scd4', :first_name => 'Sophie', :last_name => 'Dodson', :user_bio => 'Sophie Dodson lives in Sydney', :password => 'chicken'
u9 = User.create :email_address => 'freddiebutcher4@gmail.com', :username => 'fcjb5', :first_name => 'Freddie', :last_name => 'Butcher', :user_bio => 'Freddie Butcher lives in Sydney', :password => 'chicken'
u10 = User.create :email_address => 'sophie.dodson4@ymail.com', :username => 'scd5', :first_name => 'Sophie', :last_name => 'Dodson', :user_bio => 'Sophie Dodson lives in Sydney', :password => 'chicken'
# =end
