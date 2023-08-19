# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.0'

gem 'pg', '~> 1.5.3'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.7'
gem 'redis', '~> 4.0'
gem 'sprockets-rails', '~> 3.4'
gem 'turbo-rails', '~> 1.4'

gem 'bootsnap', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'pry-byebug', '~> 3.10'
  gem 'pry-rails', '~> 0.3.9'
  gem 'rspec-rails', '~> 6.0'
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
  gem 'shoulda-matchers', '~> 5.3'
end
