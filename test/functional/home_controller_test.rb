require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get resource" do
    get :resource
    assert_response :success
  end

  test "should get ogranisation" do
    get :ogranisation
    assert_response :success
  end

  test "should get what_is_here" do
    get :what_is_here
    assert_response :success
  end

  test "should get event" do
    get :event
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

end
