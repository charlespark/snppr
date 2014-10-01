class Url < ActiveRecord::Base
	belongs_to :user
	has_many :webs
	belongs_to :category
end
