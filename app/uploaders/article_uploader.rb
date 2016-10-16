# encoding: utf-8

class ArticleUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  storage :file

   def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}"
  end


  # Create different versions of your uploaded files:
#  version :thumb do
#    process :resize_to_fit => [345, 200]
#  end


end
