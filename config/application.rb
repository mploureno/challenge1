require_relative 'boot'

require "rails"
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module Challenge
  class Application < Rails::Application
    config.load_defaults 5.2
    config.generators.system_tests = nil
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]    
    config.i18n.available_locales = :en
  end
end
