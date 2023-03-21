require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TodoRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
     config.load_defaults 7.0

    # config.middleware.use ActionDispatch::Cookies
    # config.middleware.use ActionDispatch::Session::CookieStore
    # config.action_dispatch_cookies_same_site_protection = :strict

        # This is set in apps generated with the --api flag, and removes session/cookie middleware
        config.api_only = true

        # Must add these lines!
        # Adding back cookies and session middleware
        config.middleware.use ActionDispatch::Cookies
        config.middleware.use ActionDispatch::Session::CookieStore
    
        # Use SameSite=Strict for all cookies to help protect against CSRF
        config.action_dispatch.cookies_same_site_protection = :strict
    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
