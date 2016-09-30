require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get page_index_url
    assert_response :success
  end

  test "should get cgu" do
    get page_cgu_url
    assert_response :success
  end

  test "should get map" do
    get page_map_url
    assert_response :success
  end

end
