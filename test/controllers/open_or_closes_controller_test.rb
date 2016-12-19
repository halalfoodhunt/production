require 'test_helper'

class OpenOrClosesControllerTest < ActionController::TestCase
  setup do
    @open_or_close = open_or_closes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:open_or_closes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create open_or_close" do
    assert_difference('OpenOrClose.count') do
      post :create, open_or_close: { name: @open_or_close.name }
    end

    assert_redirected_to open_or_close_path(assigns(:open_or_close))
  end

  test "should show open_or_close" do
    get :show, id: @open_or_close
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @open_or_close
    assert_response :success
  end

  test "should update open_or_close" do
    patch :update, id: @open_or_close, open_or_close: { name: @open_or_close.name }
    assert_redirected_to open_or_close_path(assigns(:open_or_close))
  end

  test "should destroy open_or_close" do
    assert_difference('OpenOrClose.count', -1) do
      delete :destroy, id: @open_or_close
    end

    assert_redirected_to open_or_closes_path
  end
end
