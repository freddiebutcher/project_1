User.destroy_all
puts "Creating users"
u1 = User.create :email_address => 'freddiebutcher@gmail.com', :username => 'fcjb', :first_name => 'Freddie', :last_name => 'Butcher', :user_bio => 'Freddie Butcher lives in Sydney'
u2 = User.create :email_address => 'sophie.dodson@ymail.com', :username => 'scd', :first_name => 'Sophie', :last_name => 'Dodson', :user_bio => 'Sophie Dodson lives in Sydney'

Post.destroy_all
puts "Creating posts"
p1 = Post.create :show_name => 'The Cycling Podcast', :episode_name => 'Tour de France - Stage 18', :episode_description => 'News roundup from the 18th stage of the 2019 Tour de France.', :pod_link => 'https://thecyclingpodcast.com/podcast/stage-18-embrun-valloire', :img_link => 'https://thecyclingpodcast.com/wp-content/uploads/2018/01/Screen-Shot-2018-01-03-at-16.48.19.png'
p2 = Post.create :show_name => 'Reply-All', :episode_name => 'The Takeover', :episode_description => 'Thomas Oscar is an Australian teenager who tried to make the most boring Facebook group possible - a group where members pretend to be corporate drones in a non-existent office.', :pod_link => 'https://gimletmedia.com/shows/reply-all/94hwmv/29-the-takeover', :img_link => 'https://res.cloudinary.com/gimlet-media/image/upload/c_scale,f_auto,q_auto:best,w_1000/dica7jm4jwcj4zvjufdx'
