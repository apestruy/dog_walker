require 'test_helper'

class WalkerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get walker_index_url
    assert_response :success
  end

  test "should get new" do
    get walker_new_url
    assert_response :success
  end

  test "should get show" do
    get walker_show_url
    assert_response :success
  end

  test "should get create" do
    get walker_create_url
    assert_response :success
  end

  test "should get edit" do
    get walker_edit_url
    assert_response :success
  end

  test "should get update" do
    get walker_update_url
    assert_response :success
  end

  test "should get delete" do
    get walker_delete_url
    assert_response :success
  end

end
