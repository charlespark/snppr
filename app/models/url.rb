class Url < ActiveRecord::Base
  
	belongs_to :user
	belongs_to :category
	has_many :webs
  has_many :images
  has_many :personals
  accepts_nested_attributes_for :webs, reject_if: proc { |attributes| attributes['link'].blank? }
  accepts_nested_attributes_for :images, reject_if: proc { |attributes| attributes['link'].blank? }
  accepts_nested_attributes_for :personals, reject_if: proc { |attributes| attributes['image'].blank? }
  
  def generate_slug
    self.slug = self.id.to_s(36)
    self.save
  end

end
