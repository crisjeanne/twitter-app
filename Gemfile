source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.2"

gem "bootsnap", require: false
gem "cssbundling-rails"
gem "jbuilder"
gem "jsbundling-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "redis"
gem "sassc-rails"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]



group :development, :test do
  
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  gem "devise"
  gem "factory_bot_rails"
  gem "faker"
  gem "pry-rails"
  gem "rspec-rails"
end

group :development do
  gem "web-console"
end

group :test do
  gem "shoulda-matchers"
end