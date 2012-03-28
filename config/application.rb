# encoding: utf-8

require File.expand_path('../boot', __FILE__)
require 'rails/all'
Bundler.require(*Rails.groups(:assets => %w(development test))) if defined?(Bundler)

module PostgresOnRails
  class Application < Rails::Application
    config.sass.preferred_syntax              = :sass if config.respond_to?(:sass) # Real men use SASS! But only in envs where it's actually loaded…
    config.time_zone                          = 'UTC'
    config.i18n.default_locale                = :en
    config.encoding                           = "utf-8"
    config.filter_parameters                 += [:password]
    config.active_record.whitelist_attributes = true
    config.assets.enabled                     = true
    config.assets.version                     = '1.0' # update this value to deprecate all assets
  end
end

