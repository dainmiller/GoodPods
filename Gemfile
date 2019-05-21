source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.3'

group :production do
  gem 'pg'
end

gem 'puma', '~> 3.11'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'responders'
gem 'jquery'
gem 'rails-bootstrap'
gem 'bootstrap'
gem 'jquery-rails'
gem "rack-cors", ">= 0.4.1"
gem 'devise'
gem 'faraday'
gem 'pry'
gem 'honeybadger', '~> 4.0'
gem 'nokogiri'
gem 'httparty'
gem 'active_emoji'

group :development, :test do
  gem 'sqlite3'
  gem 'rb-readline'
  gem 'binding_of_caller'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
