class Recipe < ActiveRecord::Base

  validates :name, presence: true
  validates :ingredients, presence: true
  validates :instructions, presence: true

  belongs_to :user
  has_many :tags
  has_many :groups, through: :tags
  has_many :favorites
  has_many :photos


  def self.basic_search(find)
    where("ingredients like ? or name like ?", "%#{find}%", "%#{find}%")
  end
end

