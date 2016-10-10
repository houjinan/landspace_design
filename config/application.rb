require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LandspaceDesign
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.


    config.time_zone = 'Beijing'
    config.i18n.default_locale = "zh-CN"

    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = 'zh-CN'
    config.i18n.available_locales = ['zh-CN', 'en']

    config.generators do |g|
      g.template_engine     :slim
      g.javascript_engine   :js
      g.scaffold_stylesheet false
      g.jbuilder            false
    end
  end


end
