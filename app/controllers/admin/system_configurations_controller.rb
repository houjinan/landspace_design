module Admin
  class SystemConfigurationsController < AdminController


    def web_site_config
      @system_config = SystemConfiguration.where(configuration_type: "web_site_config").first
      if request.post?
        @system_config.update(system_configuration_params)
        flash[:notice] = "保存成功"
      else
        @system_config = SystemConfiguration.create(name: "网站配置", configuration_type: "web_site_config") if @system_config.blank?
      end
    end

    def company_info_config

    end


    private
      def system_configuration_params
        params.require(:system_configuration).permit(:name, :configuration_type, parameters: [:name, :domain_name, :keys, :web_description])
      end
  end
end