source 'https://rubygems.org'
ruby '2.4.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'figaro'
gem 'react-rails'
gem 'normalize-rails'
gem 'simple_form'
gem 'rails_admin'
gem 'kaminari'
gem 'devise'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'rails-assets-tether', '>= 1.3.3', source: 'https://rails-assets.org'
gem 'font-awesome-rails'
gem 'ransack', github: 'activerecord-hackery/ransack'
gem 'gmaps4rails'
gem 'underscore-rails'

group :development, :test do
  gem 'byebug', platform: :mri
  gem "minitest-rails"
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "better_errors"
  gem "binding_of_caller"
  gem 'pry-rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
