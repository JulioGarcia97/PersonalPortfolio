source 'https://rubygems.org'

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
gem 'friendly_id', '~> 5.2'
gem 'devise', '~> 4.2', '>= 4.2.1'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'petergate', '~> 1.7'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.1'
gem 'kaminari', '~> 1.0', '>= 1.0.1'

# My gem
gem 'jgarcia_view_tool', '~> 0.1.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry-byebug', '~> 3.4', '>= 3.4.2'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
