class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale
  before_action :load_web_config
  def set_locale
    I18n.locale = user_locale
    cookies[:locale] = params[:locale] if params[:locale]
  rescue I18n::InvalidLocale
    I18n.locale = I18n.default_locale
  end


  def after_sign_in_path_for(resource)
    admin_dashboard_path || root_path
  end

  private
    def user_locale
      params[:locale] || cookies[:locale] || http_head_locale || I18n.default_locale
    end

    def http_head_locale
      http_accept_language.language_region_compatible_from(I18n.available_locales)
    end

    def load_web_config
      return if session['web_site_config'].present?
      system_configs =  SystemConfiguration.where(configuration_type: "web_site_config")
      session['web_site_config'] = system_configs.first.parameters if system_configs.present?
    end
end
