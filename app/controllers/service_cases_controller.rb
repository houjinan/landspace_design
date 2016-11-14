class ServiceCasesController < ApplicationController
  before_action :set_service_case, only: [:show]

  def index
    @service_cases = ServiceCase.all.order("seqence desc")
    if params[:service_type].present?
      @service_cases = @service_cases.where(service_type: params[:service_type]).order("seqence desc")
    end
  end

  def show

  end


  private
    def set_service_case
      @service_case = ServiceCase.find(params[:id])
    end
end