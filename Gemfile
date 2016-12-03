source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
ruby '2.2.5'
gem 'rails', '4.2.3'
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'administrate'
gem 'bootstrap-sass'
gem 'bh', '~> 1.3'      # so perfect!  http://fullscreen.github.io/bh
gem 'bourbon'
gem 'devise'
gem 'devise_invitable'
gem 'haml-rails'
gem 'high_voltage'
gem 'mysql2', '~> 0.3.18'
gem 'pundit'
gem 'simple_form'

# Gem to enable multi table inheritance for Plants->Vegetables/Flowers/etc
# (see https://github.com/hzamani/active_record-acts_as)
gem 'active_record-acts_as'

# for better code coverage
gem 'coveralls', require: false

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'simplecov', :require => false, :group => :test
end

group :development do
  gem 'better_errors'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_apps_pages'
  gem 'rails_apps_testing'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
  gem 'spring-commands-rspec'
  # TODO: gem 'guard-rspec', require: false  # http://eyefodder.com/2014/09/guard-and-rspec.html
  
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'rspec-rails'
  
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


group :production do
  gem 'rails_12factor'
  gem 'unicorn'
end

