require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UsersHelper, type: :helper do
 describe "#gravatar_for" do
    it "works" do
        #no user exists
        user=User.create(:id=>1, :name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) 
         expect(helper.gravatar_for(user)).to eq("<img alt=\"Amanda Easter\" class=\"gravatar\" src=\"https://secure.gravatar.com/avatar/2b06d0ad628748291f6a50fb83ab0fa9?s=80\" />")
        
    end
  end
end
