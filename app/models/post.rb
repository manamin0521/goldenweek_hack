class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :image, presence: true
  validates :body, presence: true 
  belongs_to :user, optional: true
end
