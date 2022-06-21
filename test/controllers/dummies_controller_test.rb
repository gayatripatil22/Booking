require "test_helper"

class DummiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dummies_index_url
    assert_response :success
  end

  test "should get new" do
    get dummies_new_url
    assert_response :success
  end

  test "should get create" do
    get dummies_create_url
    assert_response :success
  end
end
