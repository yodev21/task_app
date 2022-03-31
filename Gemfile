source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '5.2.3'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'kaminari'
#gem 'bootstrap'
gem 'bcrypt', '3.1.11'
gem 'carrierwave'
gem 'mini_magick'
gem 'fog-aws'
gem 'dotenv-rails'

# gem 'unicorn' # アプリケーションサーバのunicorn


gem 'webdrivers'
gem 'selenium-webdriver'

gem 'jquery-rails'
gem 'jquery-ui-rails'

# gem 'less-rails'
# JavaScript のエンジンである v8 を Ruby から使えるようにする
# gem 'libv8', '~> 3.11.8'
#gem 'therubyracer'
# JavaScriptコードを実行するためのエンジン
# gem 'execjs'

# Twitter社が提供しているCSSとJavaScriptのフレームワーク
gem 'twitter-bootstrap-rails'

group :development, :test do
  gem 'byebug' 
  gem 'rspec-rails', '~> 3.8'
  gem 'factory_bot_rails'
  gem 'spring-commands-rspec'
  gem 'rspec-retry'

  gem 'capistrano', '3.6.0' # capistranoのツール一式
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano-rbenv'
  gem 'capistrano3-unicorn'
  gem 'ed25519'
  gem 'bcrypt_pbkdf'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
group :production, :staging do
  gem 'unicorn'
  gem 'mini_racer', platforms: :ruby # デプロイ時に必要
end
