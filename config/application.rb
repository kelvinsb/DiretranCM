require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# Where the I18n library should search for translation files
#I18n.load_path += Dir[Rails.root.join('lib', 'locale', '*.{rb,yml}')]
 
# Whitelist locales available for the application
#I18n.available_locales = [:en, 'pt-BR']
 
# Set default locale to something other than :en
#I18n.default_locale = 'pt-BR'
#config.i18n.available_locales = 'pt-BR'
#config.i18n.default_local = 'pt-BR'
#config.i18n.default_locale = :'pt-BR'

module DiretranCM
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.i18n.default_locale = 'pt-BR'
  end
end
