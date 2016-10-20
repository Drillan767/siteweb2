Rails.application.configure do

  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => 'public, max-age=172800'
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
  config.action_mailer.perform_caching = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
      :address => 'smtp.gmail.com',
      :port => 587,
      :domain => 'gmail.com',
      :user_name => 'contact.siteweb.jl@gmail.com',
      :password => 'Qaq3C)8<Df6=fP*8',
      :authentication => 'plain'
  }

  #A changer, pas urgent + copier dans production dans production.rb

  config.assets.debug = true
  config.assets.quiet = true
  config.assets.digest = false

end
