require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get static_main_url
    assert_response :success
  end

  test "should get news" do
    get static_news_url
    assert_response :success
  end

  test "should get battles" do
    get static_battles_url
    assert_response :success
  end

  test "should get streams" do
    get static_streams_url
    assert_response :success
  end

  test "should get faq" do
    get static_faq_url
    assert_response :success
  end

end
