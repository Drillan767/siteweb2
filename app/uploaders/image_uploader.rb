# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  def store_dir
    'portfolio/photos'
  end

=begin
  version :thumb do
    process :resize_to_fit => [350, 360]
  end
=end

end
