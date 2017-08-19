require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Siteweb2
  class Application < Rails::Application
    config.autoload_paths += %w(#{config.root}/app/models/ckeditor)
    config.exceptions_app = self.routes
  end
end
