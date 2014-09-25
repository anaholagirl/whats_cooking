class Tag < ActiveRecord::Base

  validates :recipe_id, presence: true
  validates :type_id, presence: true

  belongs_to :recipe
end
