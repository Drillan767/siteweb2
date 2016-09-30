class Article < ApplicationRecord
  extend FriendlyId
  mount_uploader :image, ArticleUploader
  validates_presence_of :titre
  friendly_id :titre, use: :slugged


end
