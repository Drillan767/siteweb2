Devise.setup do |config|

  config.secret_key = '202cb7678e837230f5c52310e20dc12e287eb9e2198f97307f641fbb74d98b03366a0db2a6e90f9ca36bf139e5b7b6e9bd550af88d43def5139d1209b5055be3'

  # ==> Mailer Configuration
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]

  config.strip_whitespace_keys = [:email]

  config.skip_session_storage = [:http_auth]

  config.stretches = Rails.env.test? ? 1 : 11

  config.reconfirmable = true

  config.expire_all_remember_me_on_sign_out = true

  config.password_length = 6..128

  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/

  config.reset_password_within = 6.hours

  config.sign_out_via = :delete
end
