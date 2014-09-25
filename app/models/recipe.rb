class Recipe < ActiveRecord::Base

  validates :name, presence: true
  validates :ingredients, presence: true
  validates :instructions, presence: true

  belongs_to :user
  has_many :tags
end
