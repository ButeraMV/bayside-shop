class User < ApplicationRecord
  has_secure_password
  validates :email, :password_digest, :admin, presence: true
end
