class Recipe < ActiveRecord::Base

  validates :name, presence: true
  validates :ingredients, presence: true
  validates :instructions, presence: true

  belongs_to :user
  has_many :tags, dependent: :destroy
  has_many :groups, through: :tags, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :photos, dependent: :destroy


  def self.basic_search(find)
    where("ingredients like ? or name like ?", "%#{find}%", "%#{find}%")
  end
end

