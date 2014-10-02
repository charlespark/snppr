class Url < ActiveRecord::Base
  
	belongs_to :user
	belongs_to :category
	has_many :webs
  has_many :images
  has_many :personals
  accepts_nested_attributes_for :webs, :images, :personals

end
