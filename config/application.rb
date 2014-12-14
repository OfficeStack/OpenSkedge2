require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Openskedge
  class Application < Rails::Application
    config.sass.preferred_syntax = :sass
    config.assets.precompile += %w( head_dependencies.js components/* )
    config.browserify_rails.commandline_options = "-t coffeeify --extension=\".js.coffee\""
  end
end
