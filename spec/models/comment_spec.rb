require 'rails_helper'

RSpec.describe Comment, type: :model, focus: true do
	let(:user) { FactoryGirl.create(:user, email: 'me@test.com', password: 'password') }
	let(:post) { FactoryGirl.create(:post) }
	subject { described_class.new(body: 'bodybody', user: user, post: post) }

	it 'is valid with valid attributes' do
		expect(subject).to be_valid
	end

	it 'is not valid without a user'

	it 'is not valid without a body' do
		subject.body = nil
		expect(subject).to_not be_valid
	end

	it 'is not valid without a post id'

	it { should belong_to(:post) }
	it { should belong_to(:user) }

	describe 'Validations' do
		it { should validate_presence_of(:user) }
		it { should validate_presence_of(:post) }
	end
end

