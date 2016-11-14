require 'test_helper'

class NewsTrendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @news_trend = news_trends(:one)
  end

  test "should get index" do
    get news_trends_url
    assert_response :success
  end

  test "should get new" do
    get new_news_trend_url
    assert_response :success
  end

  test "should create news_trend" do
    assert_difference('NewsTrend.count') do
      post news_trends_url, params: { news_trend: { content_en: @news_trend.content_en, content_zh: @news_trend.content_zh, scan_count: @news_trend.scan_count, title_en: @news_trend.title_en, title_zh: @news_trend.title_zh } }
    end

    assert_redirected_to news_trend_url(NewsTrend.last)
  end

  test "should show news_trend" do
    get news_trend_url(@news_trend)
    assert_response :success
  end

  test "should get edit" do
    get edit_news_trend_url(@news_trend)
    assert_response :success
  end

  test "should update news_trend" do
    patch news_trend_url(@news_trend), params: { news_trend: { content_en: @news_trend.content_en, content_zh: @news_trend.content_zh, scan_count: @news_trend.scan_count, title_en: @news_trend.title_en, title_zh: @news_trend.title_zh } }
    assert_redirected_to news_trend_url(@news_trend)
  end

  test "should destroy news_trend" do
    assert_difference('NewsTrend.count', -1) do
      delete news_trend_url(@news_trend)
    end

    assert_redirected_to news_trends_url
  end
end
