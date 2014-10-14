require 'rails_helper'

#Categories - refers to the categories in which users can place images (web-hosted or personal) and webs (web site links)

# Categories
# has_many :links
# Is the User logged in?
# Can pictures and webs be placed into categories?
# Are there picture and webs-specific categories?


#Images - refers to web-hosted images (i.e. images already online and linked from other sites)
#Link - refers to the custom URL generated after a user creates a SNPPR output page.  This Link is specific to each output page
#Personals - refers to locally-hosted images on a user machine that need to be hosted on our end before they go up to the output page
#Webs - refers to the actual web sites and links that can be included on the input page

# Link, formerly known as URL, this is the created shortened URL that is output from the API
# - Slug (doesn't really apply, since the user cannot fully customize the shortened URL (or can they?)
# - Title
# - Needs to be able to be unique, clickable and lead to the correct output page
# has_many :images
# belongs_to :users, :categories
# Does the link lead to the proper output page?
# Does the link shorten correctly?

# Web, this is the model for the web sites that the API links to (and takes the link from)
# - Title
# - Screenshot
# - Metadata
# - URL
# belongs_to :categories
# Does the URL lead to a working page?
# Does the URL lead to a safe/suspicious page?
# Does the URL contain metadata/screenshot that can be scraped?

# Image, this is the web link for images that are shared on the web (i.e. already online)
# - Link (URL)
# - Alt text
# belongs_to :links, :personals
# describe
# it "should have an image_path (address)"
# What categories does an image have?
# A URL (i.e. www.site.com/fancy.jpg)
# A filename (fancy.jpg)
# Image size (file size, pixel size)
# It should be format JPG
# What happens if it is PNG / GIF / Other?
# Does this have alt-text?

# Personal
# has_many :images
# Can the user upload images from their computer?
# Not directly related, though can the user drag-and-drop pictures to the input page?

# Sessions(?)
# Skip this for any model testing


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

	# 	it "should be affiliated with a user" do
	# 		expect(category.)

end
