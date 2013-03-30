source "http://rubygems.org"

# Declare your gem's dependencies in edible_recipe.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
gem "jquery-rails"

group :development do
    gem 'pry'
    gem 'pry-remote'
    gem 'pry-stack_explorer'
    gem 'pry-debugger'
end

group :test do
	gem "capybara"
	gem "factory_girl_rails"
	gem "guard-rspec"
end
