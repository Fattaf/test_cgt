# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.7'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use sqlite3 as the database for Active Record
gem 'sqlite3', '~> 1.4'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem 'importmap-rails'

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails', '~> 1.4'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :development, :test do
  gem 'pry-byebug', '~> 3.10'
  gem 'pry-rails', '~> 0.3.9'
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console', '~> 4.2.0'

  gem 'rubocop', '~> 1.56'
  gem 'rubocop-rails', '~> 2.20'
  gem 'rubocop-rspec', '~> 2.23'
end

group :test do
  gem 'factory_bot_rails', '~> 6.2'
  gem 'ffaker', '~> 2.21'
  gem 'rspec-rails', '~> 6.0'
  gem 'shoulda-matchers', '~> 5.3'
end
