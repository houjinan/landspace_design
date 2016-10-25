class ServiceCasesController < ApplicationController
  before_action :set_service_case, only: [:show]


  def show

  end


  private
    def set_service_case
      @service_case = ServiceCase.find(params[:id])
    end
end