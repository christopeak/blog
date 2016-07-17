require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

  describe "GET #new", focus: :true do
    let(:p) { FactoryGirl.create :post }
    it "returns http success" do
      get :new, post_id: { post_id: p.to_param }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #delete" do
    it "returns http success" do
      get :delete
      expect(response).to have_http_status(:success)
    end
  end

end
