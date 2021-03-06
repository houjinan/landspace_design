class NewsTrendsController < ApplicationController
  before_action :set_news_trend, only: [:show]

  def index
    @news_trends = NewsTrend.all.where(is_published: true).order("created_at desc").paginate(:per_page => 10, :page => params[:page])
  end

  def show
    @news_trend.scaned if @news_trend.present?
  end

  private
    def set_news_trend
      @news_trend = NewsTrend.find(params[:id])
    end
end
