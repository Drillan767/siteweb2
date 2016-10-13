class Article < ApplicationRecord

  mount_uploader :image, ArticleUploader
  extend FriendlyId
  friendly_id :titre, use: :slugged
end
