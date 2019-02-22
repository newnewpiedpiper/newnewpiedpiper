require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ChannelsHelper. For example:
#
# describe ChannelsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end

RSpec.describe ApplicationHelper, type: :helper do
  describe "#logged_in" do
    it "works" do
        #no user exists
         expect(helper.logged_in?).to eq false
        #user is exists
        helper.stub(:current_user) { User.create(:name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) }
        expect(helper.logged_in?).to eq true
        
    end
  end
  describe "#get_votes_class" do
    it "returns the vote with id" do
      expect(helper.get_votes_class(1)).to eq("votes_1")
    end
  end
  describe "#get_channel_name" do
    it "returns blank on rescue or channel name" do
      expect(helper.get_channel_name(1)).to eq("")
      Channel.create(:id=> 1,:channel_name => "memes", :channel_description => "Post all your quality memes here", :channel_guidelines => "Don\'t repost", :moderators => 1, :postid => "1,2")
      expect(helper.get_channel_name(1)).to eq("memes")
    end
  end
  describe "#check_permissions" do
    it "returns t/f if user matches id" do
        #no user
        helper.stub(:current_user) {nil}
        expect(helper.check_permissions(1)).to eq false
        #user matches
        helper.stub(:current_user) { User.create(:id=>5, :name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) }
        expect(helper.check_permissions(5)).to eq true
        #user doesn't match
        helper.stub(:current_user) { User.create(:id=>5, :name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) }
        expect(helper.check_permissions(6)).to eq false
    end
  end
  describe "#current_user" do
    it "returns current_user" do
        #no user
        expect(helper.current_user).to eq(nil)
        #user
        helper.stub(:current_user) { User.create(:id=>5, :name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) }
        expect(helper.current_user).to eq(User.create(:id=>5, :name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false))
    end
  end
  describe "#get_username" do
    it "returns username" do
        #no user
        expect(helper.get_username(nil)).to eq("")
        #user matches
       User.create(:id=>5, :name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) 
        expect(helper.get_username(5)).to eq("amandapanda")
        #user doesn't exist
        expect(helper.get_username(6)).to eq("")
    end
  end
end