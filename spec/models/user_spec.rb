#"RSpec test conditions for each category"
require 'rails_helper'

#User - refers to the actual SNPPR user

describe User do
	user = User.new

	describe 'user test case' do
		before do
			@default = User.new(full_name: 'John Doe', email: 'test@abc.com', password_digest: '1234', user_name: 'test')
		end
		
		it "should have a full_name" do
			expect(user.full_name = 'John Doe')
		end

		it "should have an email" do
			expect(user.email = 'test@abc.com')
		end

		it "should have a password_digest" do
			expect(user.password_digest = '1234')
		end

		it "should have a user_name" do
			expect(user.user_name = 'test')
		end
	 end
end

	describe User do

		it "is invalid without a full_name" do
			unnamed = User.new(id: '123', email: 'aazz@123.com', password_digest: 'az09AZ555555', user_name: 'happy', created_at: '2001-02-03T04:05:06+07:00', updated_at: '2001-02-03T04:05:06+07:00')
			should_not be_valid
		end

		it "is invalid without an email" do
			lostemail = User.new(id: '123', full_name: 'Aaron Zyla', email: '', password_digest: 'az09AZ555555', user_name: 'happy', created_at: '2001-02-03T04:05:06+07:00', updated_at: '2001-02-03T04:05:06+07:00')
			should_not be_valid
		end

		it "is invalid without a password_digest" do
			passwordless = User.new(id: '123', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: '', user_name: 'happy', created_at: '2001-02-03T04:05:06+07:00', updated_at: '2001-02-03T04:05:06+07:00')
			should_not be_valid
		end

		it "is invalid without a user_name" do
			nameless = User.new(id: '123', full_name: 'Aaron Zyla', email: 'aazz@123.com', password_digest: 'az09AZ555555', user_name: '', created_at: '2001-02-03T04:05:06+07:00', updated_at: '2001-02-03T04:05:06+07:00')
			should_not be_valid
		end
	end
