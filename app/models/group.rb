class Group < ActiveRecord::Base

  validates :name, presence: true

  has_many :tags
end
