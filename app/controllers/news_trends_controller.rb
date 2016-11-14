class NewsTrendsController < ApplicationController
  before_action :set_news_trend, only: [:show, :edit, :update, :destroy]

  # GET /news_trends
  # GET /news_trends.json
  def index
    @news_trends = NewsTrend.all
  end

  # GET /news_trends/1
  # GET /news_trends/1.json
  def show
  end

  # GET /news_trends/new
  def new
    @news_trend = NewsTrend.new
  end

  # GET /news_trends/1/edit
  def edit
  end

  # POST /news_trends
  # POST /news_trends.json
  def create
    @news_trend = NewsTrend.new(news_trend_params)

    respond_to do |format|
      if @news_trend.save
        format.html { redirect_to @news_trend, notice: 'News trend was successfully created.' }
        format.json { render :show, status: :created, location: @news_trend }
      else
        format.html { render :new }
        format.json { render json: @news_trend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_trends/1
  # PATCH/PUT /news_trends/1.json
  def update
    respond_to do |format|
      if @news_trend.update(news_trend_params)
        format.html { redirect_to @news_trend, notice: 'News trend was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_trend }
      else
        format.html { render :edit }
        format.json { render json: @news_trend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_trends/1
  # DELETE /news_trends/1.json
  def destroy
    @news_trend.destroy
    respond_to do |format|
      format.html { redirect_to news_trends_url, notice: 'News trend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_trend
      @news_trend = NewsTrend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_trend_params
      params.require(:news_trend).permit(:title_zh, :title_en, :content_zh, :content_en, :scan_count)
    end
end
