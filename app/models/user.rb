class User < ActiveRecord::Base

  validates :email, presence: true
  validates :password_digest, presence: true

  has_many :recipes
  has_many :favorites
  has_many :photos
end
