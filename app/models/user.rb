class User < ActiveRecord::Base
 before_save { self.email = email.downcase }
 validates(:full_name, presence: true)
 #validates(:username, presence: true)
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
          # uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }

  has_many :urls
  has_many :categories

# <<<<<<< HEAD
#   has_secure_password
# <<<<<<< HEAD
# =======
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
# =======
# >>>>>>> controller_features

# >>>>>>> frontEnd
end
