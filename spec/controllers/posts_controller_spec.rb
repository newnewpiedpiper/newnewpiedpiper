require 'rails_helper'

RSpec.describe PostsController, type: :controller do
describe "GET #index" do
    subject { get :index }

    it "renders the index template" do
      expect(subject).to render_template(:index)
      expect(subject).to render_template("index")
      expect(subject).to render_template("posts/index")
    end

    it "does not render a different template" do
      expect(subject).to_not render_template("posts/show")
    end
  end
  describe "#create" do
    subject { post :create, :post => { :title => 'Granola', :content=> 'Are you ate?', :user_id => '5', :channel_id => '1', :link =>''} }

    it "redirects to post_url(@post)" do
      expect(subject).to redirect_to(post_url(assigns(:post)))
    end

    it "redirects_to :action => :show" do
      expect(subject).to redirect_to :action => :show,
                                     :id => assigns(:post).id
    end

    it "redirects_to(@post)" do
      expect(subject).to redirect_to(assigns(:post))
    end

    it "redirects_to /posts/:id" do
      expect(subject).to redirect_to("/posts/#{assigns(:post).id}")
    end
  end
    describe "POST posts#create" do
          it "creates a new Post" do
          expect{
            Post.create(:title => 'Granola', :content=> 'Are you ate?', :user_id => '5', :channel_id => '1', :link =>'')
          }.to change(Post,:count).by(1)
        end
    end
    describe "edit" do
        let(:post) {Post.create(:title => 'Granola', :content=> 'Are you ate?', :user_id => '5', :channel_id => '1', :link =>'')}

        before(:each) do
          get :edit, id: post
        end
        
        it "finds a specific post" do
          expect(assigns(:post)).to eq(post)
        end
    end
end
