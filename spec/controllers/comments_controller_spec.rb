require 'rails_helper'
#require 'factory_girl'
#include Devise::TestHelpers

RSpec.describe CommentsController, type: :controller do

  describe "GET #new", focus: :true do
    let(:p) { FactoryGirl.create :post }
    it "returns http success" do
      get :new, post_id: { post_id: p.to_param }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
		#@request.env["devise.mapping"] = Devise.mappings[:user]	
		user = FactoryGirl.create(:user)
		sign_in user
		#before { sign_in(user) }
		let(:p) { FactoryGirl.create :post }
		before(:all) do
			@user = FactoryGirl.build( :user, email: 'bogus@test3.edu' )
			sign_in @user
			#let(:u) { FactoryGirl.create :user }
			#before { controller.stub(:current_user).and_return u }
			#let(:current_user) { FactoryGirl.create :user }
			#let(:c) { FactoryGirl.build :comment }
		end
    it "returns http success" do
      post :create, comment: FactoryGirl.attributes_for(:comment), post_id: p.to_param
			expect(response).to redirect_to(post_path(p))
    end
  end

  describe "GET #delete" do
    it "returns http success" do
      get :delete
      expect(response).to have_http_status(:success)
    end
  end

end
