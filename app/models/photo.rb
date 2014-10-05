class Photo < ActiveRecord::Base

  validates :name, presence: true
  validates :recipe_id, presence: true
  validates :user_id, presence: true
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  # has_attached_file :photo, :styles => { :large => "700x700", :medium => "500x500", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  # validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  belongs_to :user
  belongs_to :recipe
end
