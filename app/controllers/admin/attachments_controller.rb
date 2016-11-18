module Admin
  class AttachmentsController < AdminController
    before_action :set_attachment, only: [:show, :edit, :update, :destroy]
    protect_from_forgery :except => :create
    def index
      @attachments = Attachment.all.order("created_at desc").paginate(:per_page => 20, :page => params[:page])
    end

    def show
    end

    def new
      @attachment = Attachment.new
    end

    def edit
    end

    def create
      @attachment = Attachment.new(attachment_params)
      @attachment.resource = SystemConfiguration.first
      if @attachment.save
        render :text => "#{@attachment.avatar.url}"
      else
        render :text => ""
      end
    end

    def update
      if @attachment.update(attachment_params)
        redirect_to admin_attachment_path(@attachment), notice: 'News trend was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @attachment.destroy
      redirect_to attachments_url, notice: 'News trend was successfully destroyed.'
    end

    private
      def set_attachment
        @attachment = Attachment.find(params[:id])
      end

      def attachment_params
        params.require(:attachment).permit(:avatar)
      end
  end
end