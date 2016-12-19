require 'test_helper'

class QualifyingsControllerTest < ActionController::TestCase
  setup do
    @qualifying = qualifyings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualifyings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualifying" do
    assert_difference('Qualifying.count') do
      post :create, qualifying: { _criteria: @qualifying._criteria, name: @qualifying.name }
    end

    assert_redirected_to qualifying_path(assigns(:qualifying))
  end

  test "should show qualifying" do
    get :show, id: @qualifying
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualifying
    assert_response :success
  end

  test "should update qualifying" do
    patch :update, id: @qualifying, qualifying: { _criteria: @qualifying._criteria, name: @qualifying.name }
    assert_redirected_to qualifying_path(assigns(:qualifying))
  end

  test "should destroy qualifying" do
    assert_difference('Qualifying.count', -1) do
      delete :destroy, id: @qualifying
    end

    assert_redirected_to qualifyings_path
  end
end
