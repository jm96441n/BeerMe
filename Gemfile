source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = '#{repo_name}/#{repo_name}' unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.5'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# React on rails for a better react experience
gem 'react_on_rails', '~> 10.0.2'

# webpacker to handle webpack
gem 'webpacker', '~> 3.0'

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'

# Acts as addressable gem for addresses
gem 'acts_as_addressable', git: 'git@github.com:mobilityhouse/acts_as_addressable.git'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# fast_jsonapi for faster json serialization
gem 'fast_jsonapi'

# OJ gem for faster json serialization
gem 'oj'

# jsonapi for json serialization
gem 'jsonapi-rails'

# rubocop for style checking
gem 'rubocop', '~> 0.52.1', require: false

# Bootstrap styling is hard
gem 'bootstrap', '~> 4.0.0'

# JQuery because bootstrap needs it
gem 'jquery-rails'

# Kaminari for pagination
gem 'kaminari'

# api-pagination to format kaminara for api only response
gem 'api-pagination'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Rspec for testing
  gem 'rspec-rails', '~> 3.7'

  # active_model mocks for additional mocking
  gem 'rspec-activemodel-mocks'

  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'

  gem 'selenium-webdriver'

  # factory bot to stub models
  gem 'factory_bot_rails'

  gem 'pry'
  gem 'pry-rails'
end

group :test do
  gem 'cucumber-rails', :require => false
  # database_cleaner is not required, but highly recommended
  gem 'database_cleaner'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'mini_racer', platforms: :ruby
