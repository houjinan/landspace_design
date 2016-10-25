module Admin
  class ServiceCasesController < AdminController
    before_action :set_service_case, only: [:show, :edit, :update, :destroy]

    def index
      @service_cases = ServiceCase.all.paginate(:per_page => 20, :page => params[:page])
    end

    def show
    end

    def new
      @service_case = ServiceCase.new
    end

    def edit
    end

    def create
      @service_case = ServiceCase.new(service_case_params)
      respond_to do |format|
        if @service_case.save
          if params[:fileselect].present?
            params[:fileselect].each do |file|
              @service_case.attachments.create(avatar: file)
            end
          end
          format.html { redirect_to admin_service_case_path(@service_case), notice: 'Service case was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @service_case.update(service_case_params)
          if params[:fileselect].present?
            params[:fileselect].each do |file|
              @service_case.attachments.create(avatar: file)
            end
          end
          format.html { redirect_to admin_service_case_path(@service_case), notice: 'Service case was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @service_case.destroy
      respond_to do |format|
        format.html { redirect_to admin_service_cases_url, notice: 'Service case was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      def set_service_case
        @service_case = ServiceCase.find(params[:id])
      end

      def service_case_params
        params.require(:service_case).permit(:service_type, :title_en, :title_zh, :description_en, :description_zh, attachments_attributes: [:id, :_destroy])
      end
  end
end