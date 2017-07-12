source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.1.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'
gem 'cancancan', '~> 1.15'
gem 'carrierwave', '~> 1.0'
gem "mini_magick"
gem "nested_form"
gem 'jquery-datatables-rails', '~> 3.4'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.2'
gem 'ckeditor'

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'sqlite3'
  gem 'spring'
  gem 'pry-rails'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'pg', '~> 0.20.0'
  gem 'rails_12factor', '~> 0.0.3'
end