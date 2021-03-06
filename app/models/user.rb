class User < ActiveRecord::Base

  has_secure_password

  validates :name, :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  has_many :recipes
  has_many :favorites, dependent: :destroy
  has_many :photos
  has_many :tags, dependent: :destroy
  has_many :groups, dependent: :destroy
end
