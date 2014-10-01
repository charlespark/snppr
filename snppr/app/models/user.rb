class User < ActiveRecord::Base
has_secure_password
has_many :urls
has_many :personals

end