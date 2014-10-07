class User < ActiveRecord::Base
  
  has_many :urls
  has_many :categories

  has_secure_password
  has_one :full_name
  has_one :email
  has_one :username

end
