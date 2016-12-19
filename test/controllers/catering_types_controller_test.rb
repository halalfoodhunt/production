require 'test_helper'

class CateringTypesControllerTest < ActionController::TestCase
  setup do
    @catering_type = catering_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catering_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catering_type" do
    assert_difference('CateringType.count') do
      post :create, catering_type: { name: @catering_type.name }
    end

    assert_redirected_to catering_type_path(assigns(:catering_type))
  end

  test "should show catering_type" do
    get :show, id: @catering_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catering_type
    assert_response :success
  end

  test "should update catering_type" do
    patch :update, id: @catering_type, catering_type: { name: @catering_type.name }
    assert_redirected_to catering_type_path(assigns(:catering_type))
  end

  test "should destroy catering_type" do
    assert_difference('CateringType.count', -1) do
      delete :destroy, id: @catering_type
    end

    assert_redirected_to catering_types_path
  end
end
