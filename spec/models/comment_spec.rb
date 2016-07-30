require 'rails_helper'

RSpec.describe Comment, type: :model, focus: true do
	subject { described_class.new(body: 'bodybody') }

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
end
