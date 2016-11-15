class NewsTrendsController < ApplicationController
  before_action :set_news_trend, only: [:show]

  def index
    @news_trends = NewsTrend.all.order("created_at desc")
  end

  def show
  end

  private
    def set_news_trend
      @news_trend = NewsTrend.find(params[:id])
    end
end
