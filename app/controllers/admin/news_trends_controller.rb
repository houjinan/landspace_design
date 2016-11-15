module Admin
  class NewsTrendsController < AdminController
    before_action :set_news_trend, only: [:show, :edit, :update, :destroy]

    def index
      @news_trends = NewsTrend.all.order("created_at desc").paginate(:per_page => 20, :page => params[:page])
    end

    def show
    end

    def new
      @news_trend = NewsTrend.new
    end

    def edit
    end

    def create
      @news_trend = NewsTrend.new(news_trend_params)

      if @news_trend.save
        redirect_to admin_news_trend_path(@news_trend), notice: 'News trend was successfully created.'
      else
        render :new
      end
    end

    def update
      if @news_trend.update(news_trend_params)
        redirect_to admin_news_trend_path(@news_trend), notice: 'News trend was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @news_trend.destroy
      redirect_to news_trends_url, notice: 'News trend was successfully destroyed.'
    end

    private
      def set_news_trend
        @news_trend = NewsTrend.find(params[:id])
      end

      def news_trend_params
        params.require(:news_trend).permit(:title_zh, :title_en, :content_zh, :content_en, :cover_image, :scan_count, :is_published)
      end
  end
end
