class Portfolio < ApplicationRecord

  extend FriendlyId
  mount_uploader :thumbnail, ThumbnailUploader
  friendly_id :titre, use: :slugged
  has_many :photos, :inverse_of => :portfolio, :dependent => :destroy
  accepts_nested_attributes_for :photos
  validates_uniqueness_of :slug

end

