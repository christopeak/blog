# https://github.com/plataformatec/devise/wiki/How-To:-Controllers-and-Views-tests-with-Rails-3-(and-rspec)
module ControllerMacros
  def login_admin
    let(:admin) { FactoryGirl.create(:admin) }
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:admin]
      sign_in admin
    end
  end

	def login_user
		let(:user) { FactoryGirl.create(:user) }
		before(:each) do
			@request.env["devise.mapping"] = Devise.mappings[:user]
			sign_in user
		end
	end
end
