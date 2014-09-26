class Tag < ActiveRecord::Base

  validates :recipe_id, presence: true
  validates :group_id, presence: true

  belongs_to :recipe
  belongs_to :group
  belongs_to :user
end
