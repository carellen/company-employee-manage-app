source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby `cat .ruby-version`.strip
gem 'rails', '~> 5.2.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'

gem 'devise'
gem 'devise_invitable'
gem 'figaro'
gem 'friendly_id', '~> 5.1.0'

gem 'haml'
gem 'haml-rails'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'
gem 'bootstrap'
gem 'simple_form'
gem 'font-awesome-rails'
gem 'coffee-rails', '~> 4.2'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'enumerize'
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rspec'
  gem 'rspec-rails'

  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'factory_bot_rails'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
