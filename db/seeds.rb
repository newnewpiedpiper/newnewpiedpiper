# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# users = [{:username => 'dogs_are_life', :email=> 'dogs@gmail.com', :password => 'secret', :subscriptions => '1', :date => '1/1/2019'},
#     	 {:username => 'catluver', :email=> 'cats@gmail.com', :password => 'supersecret', :subscriptions => '1', :date => '1/1/2019'},
#   	 ]

# users.each do |user|
#   User.create!(user)
# end

# channels = [{:channel_name => 'dogs', :channel_description=> 'All dogs all the time', :channel_guidlines => 'Don\'t post cats!', :moderators => '1'},
#     	 {:channel_name => 'cats', :channel_description=> 'A channel for cats', :channel_guidlines => 'Don\'t post dogs!', :moderators => '2'},
#   	 ]

# channels.each do |channel|
#   Channel.create!(channel)
# end

posts = [{:title => 'Doggo', :content=> 'Dogs are the best animal', :votes => '25', :user_id => '1', :channel_id => '1'},
    	 {:title => 'Cat', :content=> 'Cats are the best animal', :votes => '24', :user_id => '2', :channel_id => '2'},
  	 ]

posts.each do |post|
  Post.create!(post)
end