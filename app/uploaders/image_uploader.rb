# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

  def store_dir
    'portfolio/photos'
  end

end
