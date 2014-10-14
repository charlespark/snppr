class Personal < ActiveRecord::Base

	belongs_to :url
  has_attached_file :image, :styles => { :medium => "600x380>", :thumb => "400x280>" }, :default_url => "/images/:style/missing.png", :path => "#{Rails.root}/public/system/personal/image/:id_partition/:style/:filename", :url => "/system/personal/image/:id_partition/:style/:filename"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
