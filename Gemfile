source 'https://rubygems.org'

ruby '2.4.1'
gem 'rails', '4.2.10'
gem 'bcrypt',         '3.1.12'
gem 'bootstrap-sass'
gem 'bootstrap'
gem 'responders' 
# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'


# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'database_cleaner', '1.4.1'
  gem 'capybara', '2.4.4'
  gem 'launchy'
  gem 'rspec-rails', '3.7.2'
  gem 'ZenTest', '4.11.2'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'simplecov', :require => false
end
group :production do
  gem 'pg', '~> 0.15'
  gem 'rails_12factor' #https://github.com/heroku/rails_12factor
end

# Gems used only for assets and not required
# in production environments by default.

  #gem 'therubyracer', '~> 0.12.0'
gem 'sass-rails', '~> 5.0.3'
gem 'coffee-rails', '~> 4.1.0'
gem 'uglifier', '>= 2.7.1'

gem 'jquery-rails'
gem 'haml'
gem 'turbolinks'
gem 'acts_as_votable'
gem 'responders'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

gem 'sunspot_rails'
gem 'sunspot_solr'