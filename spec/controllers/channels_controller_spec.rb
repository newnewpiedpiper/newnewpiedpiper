require 'rails_helper'

RSpec.describe ChannelsController, type: :controller do
describe "GET #index" do
    subject { get :index }

    it "renders the index template" do
      expect(subject).to render_template(:index)
      expect(subject).to render_template("index")
      expect(subject).to render_template("channels/index")
    end

    it "does not render a different template" do
      expect(subject).to_not render_template("channels/show")
    end
  end
  describe "#create" do
    subject { post :create, :channel => { :channel_name => "memes", :channel_description => "Post all your quality memes here", :channel_guidelines => "Don\'t repost", :moderators => 1, :postid => "1,2" } }

    it "redirects to channel_url(@channel)" do
      expect(subject).to redirect_to(channel_url(assigns(:channel)))
    end

    it "redirects_to :action => :show" do
      expect(subject).to redirect_to :action => :show,
                                     :id => assigns(:channel).id
    end

    it "redirects_to(@channel)" do
      expect(subject).to redirect_to(assigns(:channel))
    end

    it "redirects_to /channels/:id" do
      expect(subject).to redirect_to("/channels/#{assigns(:channel).id}")
    end
  end
  describe "#subscribe" do
    it "works" do
        #no user exists
         expect(controller.subscribe).to eq("You must be logged in to subscribe")
        #user is exists
        User.create(:id=>5,:name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) 
        controller.stub(:current_user) { User.create(:id=>5, :name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) }
        Channel.create(:id=> 1,:channel_name => "memes", :channel_description => "Post all your quality memes here", :channel_guidelines => "Don\'t repost", :moderators => 1, :postid => "1,2")
        controller.stub(:params).and_return({:id => 1})
    end
  end
  describe "#unsubscribe" do
    it "works" do
        #no user exists
         expect(controller.unsubscribe).to eq("You must be logged in to unsubscribe")
        #user is exists
        User.create(:id=>5,:name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) 
        controller.stub(:current_user) { User.create(:id=>5, :name => "Amanda Easter", :email => "me@amandaeaster.com", :username => "amandapanda", :password => "testpassword", :password_confirmation => "testpassword", :subscriptions =>  "1,2",admin:false) }
        Channel.create(:id=> 1,:channel_name => "memes", :channel_description => "Post all your quality memes here", :channel_guidelines => "Don\'t repost", :moderators => 1, :postid => "1,2")
        controller.stub(:params).and_return({:id => 1})
    end
  end
end
