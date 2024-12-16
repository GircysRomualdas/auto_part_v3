require "test_helper"

class Admin::CarPartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_car_parts_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_car_parts_show_url
    assert_response :success
  end

  test "should get new" do
    get admin_car_parts_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_car_parts_edit_url
    assert_response :success
  end
end
