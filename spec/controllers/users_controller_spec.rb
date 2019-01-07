require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #name:string" do
    it "returns http success" do
      get :name:string
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #email:string" do
    it "returns http success" do
      get :email:string
      expect(response).to have_http_status(:success)
    end
  end

end
