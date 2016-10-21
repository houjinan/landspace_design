module Admin
  class ServiceCasesController < AdminController
    before_action :set_service_case, only: [:show, :edit, :update, :destroy]

    # GET /admin/service_cases
    # GET /admin/service_cases.json
    def index
      @service_cases = ServiceCase.all
    end

    # GET /admin/service_cases/1
    # GET /admin/service_cases/1.json
    def show
    end

    # GET /admin/service_cases/new
    def new
      @service_case = ServiceCase.new
    end

    # GET /admin/service_cases/1/edit
    def edit
    end

    # POST /admin/service_cases
    # POST /admin/service_cases.json
    def create
      @service_case = ServiceCase.new(service_case_params)
      binding.pry
      respond_to do |format|
        if @service_case.save
          format.html { redirect_to @service_case, notice: 'Service case was successfully created.' }
          format.json { render :show, status: :created, location: @service_case }
        else
          format.html { render :new }
          format.json { render json: @service_case.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /admin/service_cases/1
    # PATCH/PUT /admin/service_cases/1.json
    def update
      respond_to do |format|
        if @service_case.update(service_case_params)
          format.html { redirect_to @service_case, notice: 'Service case was successfully updated.' }
          format.json { render :show, status: :ok, location: @service_case }
        else
          format.html { render :edit }
          format.json { render json: @service_case.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /admin/service_cases/1
    # DELETE /admin/service_cases/1.json
    def destroy
      @service_case.destroy
      respond_to do |format|
        format.html { redirect_to service_cases_url, notice: 'Service case was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_service_case
        @service_case = ServiceCase.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def service_case_params
        params.require(:service_case).permit(:service_type, :title_en, :title_zh, :description_en, :description_zh)
      end
  end
end