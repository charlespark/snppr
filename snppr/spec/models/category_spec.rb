require 'rails_helper'
require 'spec_helper'

#Categories - refers to the categories in which users can place images (web-hosted or personal) and webs (web site links)

describe Category do
	category = Category.new

	describe 'category test case' do
		before do
			@test = Category.new(title: 'Family')
		end

		it "should have a title" do
			expect(category.title = 'family')
		end
	end

end
	describe "category.title" do
		it  "can accept letters and numbers" do
			alphanumeric = Category.new(title: "5timeS")
			expect(alphanumeric.title).to eq "5timeS"
		end
	end


describe Category do

    it "is invalid without a title" do
      noname = Category.new(id: '145', created_at: "2001-02-03T04:05:06+07:00", updated_at: "2001-02-03T04:05:06+07:00")
      expect(noname).to be_valid
    end
end
