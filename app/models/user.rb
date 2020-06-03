class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: {minimum: 4} #, confirmation: true
  validates :password_confirmation, presence: true

  
end

