# encoding: utf-8

class ThumbnailUploader < CarrierWave::Uploader::Base

    storage :file


  # Some tests
=begin
    version :thumb do
      process :resize_to_fit => [50, 50]
    end
=end

  def store_dir
    'portfolio/thumbnails'
  end
end
