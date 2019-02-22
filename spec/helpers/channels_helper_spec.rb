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

RSpec.describe ChannelsHelper, type: :helper do
  describe "#check_subcription" do
    it "works" do
        #user is nil
        expect(helper.check_subcription(1)).to eq false
        #user is subscribed
        helper.stub(:current_user) { User.create(:name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) }
        expect(helper.check_subcription(1)).to eq true
        #user isn't subscribed
         expect(helper.check_subcription(-1)).to eq false
        #user subs is nil
        helper.stub(:current_user) { User.create(:name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", admin:false) }
        expect(helper.check_subcription(1)).to eq false
    end
  end
end