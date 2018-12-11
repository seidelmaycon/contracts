# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '5.2.1'

gem 'pg'

gem 'coffee-rails'
gem 'jquery-rails'
gem 'puma'
gem 'sass-rails'
gem 'slim'
gem 'uglifier'

gem 'bcrypt'

gem 'bootsnap'

group :development, :test do
  gem 'factory_bot_rails'
  gem 'pry-byebug'
  gem 'rubocop', require: false
end

group :development do
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

group :test do
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'simplecov'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
