class Favorite < ActiveRecord::Base

  validates :recipe_id, presence: true
end
