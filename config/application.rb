require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LplTheater
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Mailer settings
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.default_url_options = {host: ENV["APPLICATION_DOMAIN"]}
    config.action_mailer.asset_host = ENV["APPLICATION_URL"]
    config.action_mailer.perform_deliveries = true

    config.action_mailer.smtp_settings = {
      domain: ENV["APPLICATION_DOMAIN"],
      address: ENV["EMAIL_HOST_ADDRESS"],
      user_name: ENV["EMAIL_USERNAME"],
      password: ENV["EMAIL_PASSWORD"],
      authentication: "plain",
      port: 587,
      enable_starttls_auto: true
    }
  end
end
