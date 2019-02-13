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

posts = [
    	{:title => 'Treetop Hike', :content=> '', :user_id => '3', :channel_id => '2', :link =>'https://lh3.googleusercontent.com/AdcFA_oVuGHzgmlrAbCM-E7cqoYue8loSFBJZQYPhIJenOHMF1KIEgemjLBwFt4iwQYl4v1s0B1Gh5RG_cAHmB6o9YozlcyMfnJjRgGJfSXJ7VyWKCqWzBVS4Vj5asVPJgAW9fvdTuqp2eSiL83icI3oXl6oZzWgNjvAmEvxlG-lfj-zXFDiJ3S07XnPwegiyRKNZcbAmznPyiIU8xoUbmgeWaZ-A_vHbcmsII3uaJNxlmMRPs3GFea6A6h_9CLzxPdmSCH_A4_AzHJQsEZJZNHb9AOFS0VHoiFflnLXuAk6Aqf6Ks8-LMc-3ei-pfpWjYOAMbkVFSZHv6bkAbhAGX8RNdoaRUGR4a3Bs4z4PlzH8oVgzylZuz6UPp5FHi0zgUONgrCgecKD_S5okcM9wFXhONsHXgvCQqHaZLP7R4H69zTvrGUauSidsJh4J-WapH4IeiS2qllo0rq98KvW-jj-1XbDo1iNYDDTMxvsZaDrD7GXia9XM3rZUHrRXiRXT2rQHM-958ejxzJyjXz5gI8oAWCfMZd3OA0JjJhEL__Q-IV90rhcJtt-9ewuhWnH1VmTStt39wECZZtyeK9K643E6OciYxrrRucUgHJ9gxTvK0GKuDIu2w9K71mHkIW6_chbfmzJP2U6zFH5AChfuyUWKOY4mDqNJ6pR2boeRIW_E692KwXdi71_IDatFVgDS5ALjJfuGpImPvtd7Q=w1054-h790-no'},
        {:title => 'Granola', :content=> 'Are you ate?', :user_id => '5', :channel_id => '1', :link =>''},
        {:title => 'Morning Yoga', :content=> 'Wanna kick it, Jackie Chan', :user_id => '2', :channel_id => '2', :link => "https://lh3.googleusercontent.com/tXgzSsT1mcjIRnek9nJKgOcmdMk80ZasdSw1FGfPjHKlWntk2g_Zpe1QGNxeAn0nYb2HWCoho_ZHwf9GMk5WUC7MfrvMshcPuAWaqCbno9Iz5JmXhNJw5lKdN7_E8U0wpDpzu3wX8__VflKiFa2XL0AplJhJw3NIgVUk39LdEHJM0z2q_lF14xVDUPS0BIlh1YN4AiQQiw3dv_kcNHh0YHGaoptKlxN-6CG1I2QuHH8Srp2ms84csDul8xqjtycw7PjE76nUu_BiFPgTW48spoKXWDcMzEln1MEHMCfJR3OoQ_mZqa3Wlw3z11tOMYYwte0JME7Fq_KB3aTrM9THVk_Nm_6hRqyRGta7Wg8FBxqHhToBX6revtP_hrjq9jRhEs2o7O0HUEQGQ0Ty9LOxHqfnqn2D8RQuYpLbeF55oBAMu4OJA474vzDLCLIXlq5nxchUGilUxxs38wq62hkHSXlQthdqx7xMunRF10ThBT4fo-7UYfHGPOlQCxtL0X4DbPmfl-4CHVteNqyNeAXmjq9xDlNJbuKSXKnyjKV9coM45NAK2Gr3dyYFLm5vCLNqS4yDIWzWFyq-SAuxIp3jA4ZP4jUxbAfqjEH6KscMyLUSIaEJm23-pqNyaYCfal9UJRQzf3vgEUAo-2uRKb8WUkhgB9qUEkk295cgHRUH4I-nN7SzSTKmKrUAfdSPAe5ywzoHY2GVstDnWEnw_g=w1054-h790-no"},
        {:title => 'Sleepy in Sentosa', :content=> '', :user_id => '4', :channel_id => '2', :link => "https://lh3.googleusercontent.com/be-bSUeg1sIYkiBaTzA0tF634cKhErMMBNtHvlXZzkcFZ9KeTEKB_W-zdXMMDeuqx0UUq4utW-QZhfWOYs1FP_gJjsCxcQGWmfptCzQOaLC6Uy3xfQRzVrLd4AC2LjZ4cRqmhUSamq3QF-0XoJh7zKhIlFlZRfhpK5VmCr0XpifAw9vmAqUmCrctmU06GcyNoms8A2jIRem14cryQp3gZEU30Apvh55GLMVlpHicEai3HxyXXK4JNBUE1yzo44xVLj967hiGe9aeuRCK_sP_V0LNC4tgaFed2MUVqI2DKPM5ZXkUNTHoUGZJVDr3JdwkXP_4G2dBPMLkaqRJNKetNLAEz9SS5aQaV12n2I8Tz_Far3YKlHfOdrjbI5J_GHqz5tCQu0nwLE9RL6BUgkhdI12ea3OSdV2xKqBUGH3v2djE3hCbmc8c8_Y_pmiQumh9yqtmX1OCJEpu2_GP0MfmnJCom2D3uG7F29gO9TZ9dTd2gCrzFmbIQxpYvSMlDVLGmR-nEO0ninslJB41mH_GpozsDUc2U1_QlLLF98mvSsMiocHmjP-pa3jHXR1Fiiz8AMFC4TdmP8HuFmKAqHfM6UN0DyyaziEujSK0cam_h9y5kdHLjEPgIoGnzE61HTRGO1kE1g5EC6FPg6FVLGVIp0je9dH_Heiz13ucwTaKqZmzKXQ-IQJEhytHaVacGxfVCIhecvRAskCkp0Z7pg=w1054-h790-no"},
        {:title => 'Toes', :content=> 'Have you ever thought about them?', :user_id => '4', :channel_id => '1', :link => "https://images.store.hmv.com/app_/responsive/HMVStore/media/product/643604/01-643604.jpg?w=500"},
        {:title => 'Rick', :content=> '', :user_id => '1', :channel_id => '1', :link => "https://www.youtube.com/embed/dQw4w9WgXcQ"},

  	 ]

posts.each do |post|
  Post.create!(post)
end

users = [

    { :name => "Vinayak Chetlapalli", :email => "vinayakc@tamu.edu", :username => "vin_diesel", :password => "laptop07", :password_confirmation =>  "laptop07", :subscriptions =>  "1,2"}, 
    { :name => "Annie Blakeslee", :email => "annieblakeslee@tamu.edu", :username => "any", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2"},
    { :name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2"},
    { :name => "Reed Hampton", :email => "reedbhampton@gmail.com", :username => "iliketoreed", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2"},
    { :name => "Omar Santos", :email => "omars98@tamu.edu", :username => "god_is_an_omar", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2"},
]

users.each do |user|
    User.create!(user)
end 

channels = [{:channel_name => "memes", :channel_description => "Post all your quality memes here", :channel_guidelines => "Don\'t repost", :moderators => "1,3"},
            {:channel_name => "places", :channel_description => "Share beautiful places across the world", :channel_guidelines => "No ficticious places", :moderators => "1,3"}
           ]

channels.each do |channel|
  Channel.create!(channel)
end