source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

# ================== Main App Gems ==================
gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false
gem 'dotenv-rails', '~> 2.8', '>= 2.8.1'

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Use Sass to process CSS
# gem "sassc-rails"

# =============== Authentication Gems ===============
gem 'devise', '~> 4.8', '>= 4.8.1'

# ================ APIs Related Gems ================
gem "jbuilder"

# ================ Redis Related Gems ===============
gem "redis", "~> 4.0"
# Use Kredis to get higher-level data types in Redis
# gem "kredis"

# =============== Images Related Gems ===============
# Use Active Storage variants
# gem "image_processing", "~> 1.2"

# Carrierwave Gems
# gem 'carrierwave'
# gem 'mini_magick', '~> 4.11'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages
  gem "web-console"

  # Add speed badges
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps
  # gem "spring"
end

