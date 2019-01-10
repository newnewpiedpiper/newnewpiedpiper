require 'spec_helper'
require 'posts_controller'

class PostTest < ActiveSupport::TestCase
  describe Post do
    ##
#    def post_params
#      params.require(:post).permit(:title, :content, :post)
#    end
    ##
    describe ".create" do
      subject { create :post, title: 'Puppies', text: 'Puppies are so small!' }
        it "creates a new post" do
          expect(flash[:notice]).to eq("Post was successfully created")
        end
    end
  end
end
