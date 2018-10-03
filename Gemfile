source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'
gem 'rack-timeout', '~> 0.5'
gem 'jbuilder', '~> 2.5'
gem 'pg', '~> 1.0'
gem 'redis-rails', '~> 5.0'
gem 'sidekiq', '~> 5.1'
gem 'sass-rails', '~> 5.0'
gem 'coffee-rails', '~> 4.2'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks', '~> 5'
gem 'http_accept_language'
gem 'redcarpet'
gem 'webpacker', '~> 3.5'

group :development, :test do
  # Call 'byebug' anywhere in your code to drop into a debugger console
  gem 'byebug', platform: :mri
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 2.15', '< 4.0'
  # gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
end

group :development do
  # Enable a debug toolbar to help profile your application
  gem 'rack-mini-profiler', '~> 1.0'

  # Access an IRB console on exception pages or by using <%= console %>
  gem 'web-console', '~> 3.3.0'

  # Get notified of file changes. Read more: https://github.com/guard/listen
  gem 'listen', '>= 3.0.5', '< 3.2'

  # Use Spring. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data'
