module Admin
  class MembersController < AdminController
    before_action :set_member, only: [:show, :edit, :update, :destroy]

    def index
      @members = Member.all.order("seqence desc").paginate(:per_page => 20, :page => params[:page])
    end

    def show
    end

    def new
      @member = Member.new
    end

    def edit
    end

    def create
      @member = Member.new(member_params)

      respond_to do |format|
        if @member.save
          format.html { redirect_to admin_member_path(@member), notice: 'Member was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

    def update
      respond_to do |format|
        if @member.update(member_params)
          format.html { redirect_to admin_member_path(@member), notice: 'Member was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
    end

    def destroy
      @member.destroy
      respond_to do |format|
        format.html { redirect_to members_url, notice: 'Member was successfully destroyed.' }
      end
    end

    private
      def set_member
        @member = Member.find(params[:id])
      end

      def member_params
        params.require(:member).permit(:name_en, :name_zh, :description_en, :description_zh, :head_avatar, :works_file, :seqence)
      end
  end
end
