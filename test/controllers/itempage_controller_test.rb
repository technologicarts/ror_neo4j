require 'test_helper'

class ItempageControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get add" do
    get :add
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
