require 'test_helper'

class InstaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get insta_index_url
    assert_response :success
  end

  test "should get edit" do
    get insta_edit_url
    assert_response :success
  end

  test "should get new" do
    get insta_new_url
    assert_response :success
  end

  test "should get create" do
    get insta_create_url
    assert_response :success
  end

  test "should get destroy" do
    get insta_destroy_url
    assert_response :success
  end

end
