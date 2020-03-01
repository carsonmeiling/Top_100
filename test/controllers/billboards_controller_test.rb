require 'test_helper'

class BillboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get billboards_view_url
    assert_response :success
  end

  test "should get edit" do
    get billboards_edit_url
    assert_response :success
  end

  test "should get add" do
    get billboards_add_url
    assert_response :success
  end

end
