require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get merchant_dashboard" do
    get :merchant_dashboard
    assert_response :success
  end

  test "should get admin_dashboard" do
    get :admin_dashboard
    assert_response :success
  end

  test "should get corporate_services" do
    get :corporate_services
    assert_response :success
  end

  test "should get getting_listed" do
    get :getting_listed
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get terms_of_use" do
    get :terms_of_use
    assert_response :success
  end

  test "should get privacy_policy" do
    get :privacy_policy
    assert_response :success
  end

end
