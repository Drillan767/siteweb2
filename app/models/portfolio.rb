class Portfolio < ApplicationRecord
  extend FriendlyId
  validates_presence_of :titre
  friendly_id :titre, use: :slugged
  has_many :photos, :inverse_of => :portfolio, :dependent => :destroy
  accepts_nested_attributes_for :photos, allow_destroy: true
end
