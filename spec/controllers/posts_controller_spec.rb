require 'rails_helper'
require 'factory_girl'

RSpec.describe PostsController, type: :controller do

  describe "GET #new" , focus: :true do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "post #create" do
    let(:p) { FactoryGirl.build :post }
    before :each do
      post :create, post: { attributes: p.attributes }
    end

    it "returns http success" do
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "delete #destroy" do
    let(:p) { FactoryGirl.create :post }
    before :each do
      delete :destroy, id: p.to_param
    end

    it "returns http success" do
      expect(response).to have_http_status(:redirect)
    end
  end

  describe "GET #show" do
    let(:p) { FactoryGirl.create :post }
    it "returns http success" do
      get :show, id: p.to_param
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
