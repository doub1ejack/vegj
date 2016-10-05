Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # The test environment is used exclusively to run your application's
  # test suite. You never need to work with it otherwise. Remember that
  # your test database is "scratch space" for the test suite and is wiped
  # and recreated between test runs. Don't rely on the data there!
  config.cache_classes = true

  # Do not eager load code on boot. This avoids loading your whole application
  # just for the purpose of running a single test. If you are using a tool that
  # preloads Rails for running tests, you may have to set it to true.
  config.eager_load = true 

  # Configure static file server for tests with Cache-Control for performance.
  config.serve_static_files   = true
  config.static_cache_control = 'public, max-age=3600'

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Raise exceptions instead of rendering exception templates.
  config.action_dispatch.show_exceptions = false

  # Disable request forgery protection in test environment.
  config.action_controller.allow_forgery_protection = false

  # Randomize the order test cases are executed.
  config.active_support.test_order = :random

  # Print deprecation notices to the stderr.
  config.active_support.deprecation = :stderr

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  ##############
  ##  MAILER  ##
  ##############

  # NOTE: in order to use plain authentication with gmail's smtp server
  # you need to turn on "Allow less secure apps" in the security settings
  # for the user that your are sending email under.  
  # (Log into google as that user & visit https://myaccount.google.com/security)
  # 
  # Also, the domain doesn't seem to be important. It was working as
  # "example.com".  More info here: http://railsapps.github.io/rails-send-email.html
  config.action_mailer.smtp_settings = {
    address: "smtp.gmail.com",
    port: 587,
    domain: "tests.vegj.com",
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: Rails.application.secrets.email_provider_username,
    password: Rails.application.secrets.email_provider_password
  }
  # ActionMailer Config
  # The :test delivery method accumulates sent emails in the ActionMailer::Base.deliveries array.
  config.action_mailer.default_url_options = { :host => 'localhost:3000' }
  config.action_mailer.delivery_method = :test
  config.action_mailer.raise_delivery_errors = true
  
  # Send email in test mode?
  config.action_mailer.perform_deliveries = false
  config.action_mailer.default :charset => "utf-8"

end
