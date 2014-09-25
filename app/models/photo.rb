class Photo < ActiveRecord::Base

  validates :name, presence: true
  validates :recipe_id, presence: true
  validates :user_id, presence: true

  belongs_to :user
  belongs_to :recipe
end
