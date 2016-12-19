require 'test_helper'

class ClassTypesControllerTest < ActionController::TestCase
  setup do
    @class_type = class_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_type" do
    assert_difference('ClassType.count') do
      post :create, class_type: { name: @class_type.name }
    end

    assert_redirected_to class_type_path(assigns(:class_type))
  end

  test "should show class_type" do
    get :show, id: @class_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_type
    assert_response :success
  end

  test "should update class_type" do
    patch :update, id: @class_type, class_type: { name: @class_type.name }
    assert_redirected_to class_type_path(assigns(:class_type))
  end

  test "should destroy class_type" do
    assert_difference('ClassType.count', -1) do
      delete :destroy, id: @class_type
    end

    assert_redirected_to class_types_path
  end
end
