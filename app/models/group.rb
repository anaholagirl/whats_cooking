class Group < ActiveRecord::Base

  validates :name, presence: true
  validates :user_id, presence: true

  has_many :tags, dependent: :destroy
  has_many :recipes, through: :tags
  belongs_to :user
end
