require 'rails_helper'

describe Category do
	category = Category.new

	describe 'category test case' do
		before do
			@test = Category.new(name: 'Family')
		end

		it "should have a name" do
			expect(@test.name = 'family')
		end
	end
end
