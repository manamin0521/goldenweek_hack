class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validate :image
  belongs_to :user, optional: true
end
