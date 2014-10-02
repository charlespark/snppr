class Personal < ActiveRecord::Base

	belongs_to :url
  has_attached_file :image, :styles => { :medium => "600x380>", :thumb => "400x280>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
