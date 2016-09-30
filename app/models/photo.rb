class Photo < ApplicationRecord
  belongs_to :portfolio
  validates_presence_of :portfolio
  mount_uploader :image, ImageUploader
end
