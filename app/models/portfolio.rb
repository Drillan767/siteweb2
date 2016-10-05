class Portfolio < ApplicationRecord

  extend FriendlyId
  friendly_id :titre, use: :slugged
  has_many :photos, :inverse_of => :portfolio, :dependent => :destroy
  accepts_nested_attributes_for :photos
  mount_uploader :thumbnail, ThumbnailUploader

end
