require_relative 'boot'
require 'rails/all'
Bundler.require(*Rails.groups)
module DevExam
  class Application < Rails::Application
    config.assets.initialize_on_precompile = false
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
    I18n.enforce_available_locales = false
    config.load_defaults 5.2
    config.generators do |g|
      g.stylesheets false
      g.javascripts false
      g.assets false
      g.helper false
      g.test_framework false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
