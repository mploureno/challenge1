source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'foundation-rails'
gem 'autoprefixer-rails'
gem 'sassc-rails', '~> 2.1', '>= 2.1.2'
gem 'rails', '~> 5.2.3'
gem 'devise', '~> 4.2'
gem 'pg', '>= 1.2.2'
gem 'puma', '>= 3.12.6'
gem 'sassc', '~> 2.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt', '>= 3.1.12'
gem 'jquery-rails', '~> 4.3.5'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', '~> 3.9'
  gem 'rubocop', require: false 
  gem 'rubocop-rspec'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do 
  gem 'faker'
  gem 'shoulda-matchers', '>= 4.2.0'
  gem 'simplecov', require: false
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]