class User < ActiveRecord::Base
  
  has_many :urls
  has_many :categories

  has_secure_password

end
