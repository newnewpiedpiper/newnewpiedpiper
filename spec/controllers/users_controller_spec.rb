require 'rails_helper'

describe "GET #name:string" do
    it "returns http success" do
      get :name
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #email:string" do
    it "returns http success" do
      get :email
      expect(response).to have_http_status(:success)
    end
  end

