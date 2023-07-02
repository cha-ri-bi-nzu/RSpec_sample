require "test_helper"

class PituresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pitures_index_url
    assert_response :success
  end

  test "should get new" do
    get pitures_new_url
    assert_response :success
  end

  test "should get create" do
    get pitures_create_url
    assert_response :success
  end

  test "should get confirm" do
    get pitures_confirm_url
    assert_response :success
  end

  test "should get show" do
    get pitures_show_url
    assert_response :success
  end

  test "should get edit" do
    get pitures_edit_url
    assert_response :success
  end

  test "should get update" do
    get pitures_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pitures_destroy_url
    assert_response :success
  end
end
