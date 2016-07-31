require 'rails_helper'

RSpec.describe User, type: :model, focus: :true do
	subject {described_class.new(email: 'tester@test.com', name: 'testguy', password: 'password') }

	it "is valid with valid attributes" do
		expect(subject).to be_valid
	end

	it "is invalid without a name" do
		subject.name = nil
		expect(subject).to_not be_valid
	end

	it "is invalid without an email" do
		subject.email = nil
		expect(subject).to_not be_valid
	end

	it "is invalid without a password" do
		subject.password = nil
		expect(subject).to_not be_valid
	end

	it { should have_many(:comments) }
end
