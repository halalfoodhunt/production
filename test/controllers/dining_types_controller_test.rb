require 'test_helper'

class DiningTypesControllerTest < ActionController::TestCase
  setup do
    @dining_type = dining_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dining_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dining_type" do
    assert_difference('DiningType.count') do
      post :create, dining_type: { name: @dining_type.name }
    end

    assert_redirected_to dining_type_path(assigns(:dining_type))
  end

  test "should show dining_type" do
    get :show, id: @dining_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dining_type
    assert_response :success
  end

  test "should update dining_type" do
    patch :update, id: @dining_type, dining_type: { name: @dining_type.name }
    assert_redirected_to dining_type_path(assigns(:dining_type))
  end

  test "should destroy dining_type" do
    assert_difference('DiningType.count', -1) do
      delete :destroy, id: @dining_type
    end

    assert_redirected_to dining_types_path
  end
end
